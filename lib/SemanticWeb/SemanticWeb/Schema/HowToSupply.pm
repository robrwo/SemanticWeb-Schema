package SemanticWeb::Schema::HowToSupply;

# ABSTRACT: A supply consumed when performing the instructions for how to achieve a result.

use Moo;

extends qw/ SemanticWeb::Schema::HowToItem /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A supply consumed when performing the instructions for how to achieve a
result.




=head1 ATTRIBUTES


=head2 C<estimated_cost>

C<estimatedCost>

The estimated cost of the supply or supplies consumed when performing
instructions.


A estimated_cost should be one of the following types:

=over

=item C<Str>

=item C<InstanceOf['SemanticWeb::Schema::MonetaryAmount']>

=back

=cut

has estimated_cost => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'HowToSupply' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields, {
       'estimatedCost' => $self->curry::_serializer('estimated_cost'),
    } ]
};




=head1 SEE ALSO



L<SemanticWeb::Schema::HowToItem>

=cut

1;
