package LDF::Schema::CookAction;

# ABSTRACT: The act of producing/preparing food.

use Moo;

extends qw/ LDF::Schema::CreateAction /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

The act of producing/preparing food.




=head1 ATTRIBUTES


=head2 C<food_establishment>

C<foodEstablishment>

A sub property of location. The specific food establishment where the
action occurred.


A food_establishment should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Place']>

=item C<InstanceOf['LDF::Schema::FoodEstablishment']>

=back

=cut

has food_establishment => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<food_event>

C<foodEvent>

A sub property of location. The specific food event where the action
occurred.


A food_event should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::FoodEvent']>

=back

=cut

has food_event => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<recipe>



A sub property of instrument. The recipe/instructions used to perform the
action.


A recipe should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Recipe']>

=back

=cut

has recipe => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'CookAction' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields, {
       'foodEstablishment' => $self->curry::_serializer('food_establishment'),
       'foodEvent' => $self->curry::_serializer('food_event'),
       'recipe' => $self->curry::_serializer('recipe'),
    } ]
};




=head1 SEE ALSO



L<LDF::Schema::CreateAction>

=cut

1;
