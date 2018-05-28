package SemanticWeb::Schema::PerformAction;

# ABSTRACT: The act of participating in performance arts.

use Moo;

extends qw/ SemanticWeb::Schema::PlayAction /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

The act of participating in performance arts.




=head1 ATTRIBUTES


=head2 C<entertainment_business>

C<entertainmentBusiness>

A sub property of location. The entertainment business where the action
occurred.


A entertainment_business should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::EntertainmentBusiness']>

=back

=cut

has entertainment_business => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'entertainmentBusiness',
    json_ld_serializer => \&_serialize_entertainment_business,
);

sub _serialize_entertainment_business { $_[0]->_serializer('entertainment_business') }




around json_ld_type => sub { return 'PerformAction' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
       'entertainmentBusiness' => \&_serialize_entertainment_business,
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::PlayAction>

=cut

1;
