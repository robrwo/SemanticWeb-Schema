package SemanticWeb::Schema::RentAction;

# ABSTRACT: The act of giving money in return for temporary use

use Moo;

extends qw/ SemanticWeb::Schema::TradeAction /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

The act of giving money in return for temporary use, but not ownership, of
an object such as a vehicle or property. For example, an agent rents a
property from a landlord in exchange for a periodic payment.




=head1 ATTRIBUTES


=head2 C<landlord>



A sub property of participant. The owner of the real estate property.


A landlord should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=back

=cut

has landlord => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'landlord',
    json_ld_serializer => \&_serialize_landlord,
);

sub _serialize_landlord { $_[0]->_serializer('landlord') }


=head2 C<real_estate_agent>

C<realEstateAgent>

A sub property of participant. The real estate agent involved in the
action.


A real_estate_agent should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::RealEstateAgent']>

=back

=cut

has real_estate_agent => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'realEstateAgent',
    json_ld_serializer => \&_serialize_real_estate_agent,
);

sub _serialize_real_estate_agent { $_[0]->_serializer('real_estate_agent') }




around json_ld_type => sub { return 'RentAction' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
       'landlord' => \&_serialize_landlord,
       'realEstateAgent' => \&_serialize_real_estate_agent,
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::TradeAction>

=cut

1;
