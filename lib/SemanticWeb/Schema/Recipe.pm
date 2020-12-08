use utf8;

package SemanticWeb::Schema::Recipe;

# ABSTRACT: A recipe

use Moo;

extends qw/ SemanticWeb::Schema::HowTo /;


use MooX::JSON_LD 'Recipe';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v11.01.0';

=encoding utf8

=head1 DESCRIPTION

A recipe. For dietary restrictions covered by the recipe, a few common
restrictions are enumerated via [[suitableForDiet]]. The [[keywords]]
property can also be used to add more detail.




=head1 ATTRIBUTES


=head2 C<cook_time>

C<cookTime>

The time it takes to actually cook the dish, in [ISO 8601 duration
format](http://en.wikipedia.org/wiki/ISO_8601).


A cook_time should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Duration']>

=back

=head2 C<_has_cook_time>

A predicate for the L</cook_time> attribute.

=cut

has cook_time => (
    is        => 'rw',
    predicate => '_has_cook_time',
    json_ld   => 'cookTime',
);


=head2 C<cooking_method>

C<cookingMethod>

The method of cooking, such as Frying, Steaming, ...


A cooking_method should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_cooking_method>

A predicate for the L</cooking_method> attribute.

=cut

has cooking_method => (
    is        => 'rw',
    predicate => '_has_cooking_method',
    json_ld   => 'cookingMethod',
);


=head2 C<ingredients>



A single ingredient used in the recipe, e.g. sugar, flour or garlic.


A ingredients should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_ingredients>

A predicate for the L</ingredients> attribute.

=cut

has ingredients => (
    is        => 'rw',
    predicate => '_has_ingredients',
    json_ld   => 'ingredients',
);


=head2 C<nutrition>



Nutrition information about the recipe or menu item.


A nutrition should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::NutritionInformation']>

=back

=head2 C<_has_nutrition>

A predicate for the L</nutrition> attribute.

=cut

has nutrition => (
    is        => 'rw',
    predicate => '_has_nutrition',
    json_ld   => 'nutrition',
);


=head2 C<recipe_category>

C<recipeCategory>

The category of the recipeâfor example, appetizer, entree, etc.


A recipe_category should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_recipe_category>

A predicate for the L</recipe_category> attribute.

=cut

has recipe_category => (
    is        => 'rw',
    predicate => '_has_recipe_category',
    json_ld   => 'recipeCategory',
);


=head2 C<recipe_cuisine>

C<recipeCuisine>

The cuisine of the recipe (for example, French or Ethiopian).


A recipe_cuisine should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_recipe_cuisine>

A predicate for the L</recipe_cuisine> attribute.

=cut

has recipe_cuisine => (
    is        => 'rw',
    predicate => '_has_recipe_cuisine',
    json_ld   => 'recipeCuisine',
);


=head2 C<recipe_ingredient>

C<recipeIngredient>

A single ingredient used in the recipe, e.g. sugar, flour or garlic.


A recipe_ingredient should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_recipe_ingredient>

A predicate for the L</recipe_ingredient> attribute.

=cut

has recipe_ingredient => (
    is        => 'rw',
    predicate => '_has_recipe_ingredient',
    json_ld   => 'recipeIngredient',
);


=head2 C<recipe_instructions>

C<recipeInstructions>

A step in making the recipe, in the form of a single item (document, video,
etc.) or an ordered list with HowToStep and/or HowToSection items.


A recipe_instructions should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::CreativeWork']>

=item C<InstanceOf['SemanticWeb::Schema::ItemList']>

=item C<Str>

=back

=head2 C<_has_recipe_instructions>

A predicate for the L</recipe_instructions> attribute.

=cut

has recipe_instructions => (
    is        => 'rw',
    predicate => '_has_recipe_instructions',
    json_ld   => 'recipeInstructions',
);


=head2 C<recipe_yield>

C<recipeYield>

The quantity produced by the recipe (for example, number of people served,
number of servings, etc).


A recipe_yield should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=item C<Str>

=back

=head2 C<_has_recipe_yield>

A predicate for the L</recipe_yield> attribute.

=cut

has recipe_yield => (
    is        => 'rw',
    predicate => '_has_recipe_yield',
    json_ld   => 'recipeYield',
);


=head2 C<suitable_for_diet>

C<suitableForDiet>

Indicates a dietary restriction or guideline for which this recipe or menu
item is suitable, e.g. diabetic, halal etc.


A suitable_for_diet should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::RestrictedDiet']>

=back

=head2 C<_has_suitable_for_diet>

A predicate for the L</suitable_for_diet> attribute.

=cut

has suitable_for_diet => (
    is        => 'rw',
    predicate => '_has_suitable_for_diet',
    json_ld   => 'suitableForDiet',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::HowTo>

=cut

1;
