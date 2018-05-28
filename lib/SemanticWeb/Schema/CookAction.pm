package SemanticWeb::Schema::CookAction;

# ABSTRACT: The act of producing/preparing food.

use Moo;

extends qw/ SemanticWeb::Schema::CreateAction /;


use MooX::JSON_LD 'CookAction';
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

=item C<InstanceOf['SemanticWeb::Schema::Place']>

=item C<InstanceOf['SemanticWeb::Schema::FoodEstablishment']>

=back

=cut

has food_establishment => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'foodEstablishment',
    json_ld_serializer => \&_serialize_food_establishment,
);

sub _serialize_food_establishment { $_[0]->_serializer('food_establishment') }


=head2 C<food_event>

C<foodEvent>

A sub property of location. The specific food event where the action
occurred.


A food_event should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::FoodEvent']>

=back

=cut

has food_event => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'foodEvent',
    json_ld_serializer => \&_serialize_food_event,
);

sub _serialize_food_event { $_[0]->_serializer('food_event') }


=head2 C<recipe>



A sub property of instrument. The recipe/instructions used to perform the
action.


A recipe should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Recipe']>

=back

=cut

has recipe => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'recipe',
    json_ld_serializer => \&_serialize_recipe,
);

sub _serialize_recipe { $_[0]->_serializer('recipe') }




=head1 SEE ALSO



L<SemanticWeb::Schema::CreateAction>

=cut

1;
