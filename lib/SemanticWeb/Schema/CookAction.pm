use utf8;

package SemanticWeb::Schema::CookAction;

# ABSTRACT: The act of producing/preparing food.

use Moo;

extends qw/ SemanticWeb::Schema::CreateAction /;


use MooX::JSON_LD 'CookAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v14.0.0';

=encoding utf8

=head1 DESCRIPTION

The act of producing/preparing food.




=head1 ATTRIBUTES


=head2 C<food_establishment>

C<foodEstablishment>

A sub property of location. The specific food establishment where the
action occurred.


A food_establishment should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::FoodEstablishment']>

=item C<InstanceOf['SemanticWeb::Schema::Place']>

=back

=head2 C<_has_food_establishment>

A predicate for the L</food_establishment> attribute.

=cut

has food_establishment => (
    is        => 'rw',
    predicate => '_has_food_establishment',
    json_ld   => 'foodEstablishment',
);


=head2 C<food_event>

C<foodEvent>

A sub property of location. The specific food event where the action
occurred.


A food_event should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::FoodEvent']>

=back

=head2 C<_has_food_event>

A predicate for the L</food_event> attribute.

=cut

has food_event => (
    is        => 'rw',
    predicate => '_has_food_event',
    json_ld   => 'foodEvent',
);


=head2 C<recipe>



A sub property of instrument. The recipe/instructions used to perform the
action.


A recipe should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Recipe']>

=back

=head2 C<_has_recipe>

A predicate for the L</recipe> attribute.

=cut

has recipe => (
    is        => 'rw',
    predicate => '_has_recipe',
    json_ld   => 'recipe',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::CreateAction>

=cut

1;
