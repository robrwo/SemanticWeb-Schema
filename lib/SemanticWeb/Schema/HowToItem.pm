package SemanticWeb::Schema::HowToItem;

# ABSTRACT: An item used as either a tool or supply when performing the instructions for how to to achieve a result.

use Moo;

extends qw/ SemanticWeb::Schema::ListItem /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

An item used as either a tool or supply when performing the instructions
for how to to achieve a result.




=head1 ATTRIBUTES


=head2 C<required_quantity>

C<requiredQuantity>

The required quantity of the item(s).


A required_quantity should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=item C<Str>

=item C<Num>

=back

=cut

has required_quantity => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'requiredQuantity',
    json_ld_serializer => \&_serialize_required_quantity,
);

sub _serialize_required_quantity { $_[0]->_serializer('required_quantity') }




around json_ld_type => sub { return 'HowToItem' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
       'requiredQuantity' => \&_serialize_required_quantity,
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::ListItem>

=cut

1;
