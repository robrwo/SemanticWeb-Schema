package SemanticWeb::Schema::Recipe;

# ABSTRACT: A recipe

use Moo;

extends qw/ SemanticWeb::Schema::HowTo /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

=begin html

A recipe. For dietary restrictions covered by the recipe, a few common
restrictions are enumerated via <a class="localLink"
href="http://schema.org/suitableForDiet">suitableForDiet</a>. The <a
class="localLink" href="http://schema.org/keywords">keywords</a> property
can also be used to add more detail.

=end html




=head1 ATTRIBUTES


=head2 C<cook_time>

C<cookTime>

=begin html

The time it takes to actually cook the dish, in <a
href="http://en.wikipedia.org/wiki/ISO_8601">ISO 8601 duration format</a>.

=end html


A cook_time should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Duration']>

=back

=cut

has cook_time => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'cookTime',
    json_ld_serializer => \&_serialize_cook_time,
);

sub _serialize_cook_time { $_[0]->_serializer('cook_time') }


=head2 C<cooking_method>

C<cookingMethod>

The method of cooking, such as Frying, Steaming, ...


A cooking_method should be one of the following types:

=over

=item C<Str>

=back

=cut

has cooking_method => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'cookingMethod',
    json_ld_serializer => \&_serialize_cooking_method,
);

sub _serialize_cooking_method { $_[0]->_serializer('cooking_method') }


=head2 C<ingredients>



A single ingredient used in the recipe, e.g. sugar, flour or garlic.


A ingredients should be one of the following types:

=over

=item C<Str>

=back

=cut

has ingredients => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'ingredients',
    json_ld_serializer => \&_serialize_ingredients,
);

sub _serialize_ingredients { $_[0]->_serializer('ingredients') }


=head2 C<nutrition>



Nutrition information about the recipe or menu item.


A nutrition should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::NutritionInformation']>

=back

=cut

has nutrition => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'nutrition',
    json_ld_serializer => \&_serialize_nutrition,
);

sub _serialize_nutrition { $_[0]->_serializer('nutrition') }


=head2 C<recipe_category>

C<recipeCategory>

The category of the recipe—for example, appetizer, entree, etc.


A recipe_category should be one of the following types:

=over

=item C<Str>

=back

=cut

has recipe_category => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'recipeCategory',
    json_ld_serializer => \&_serialize_recipe_category,
);

sub _serialize_recipe_category { $_[0]->_serializer('recipe_category') }


=head2 C<recipe_cuisine>

C<recipeCuisine>

The cuisine of the recipe (for example, French or Ethiopian).


A recipe_cuisine should be one of the following types:

=over

=item C<Str>

=back

=cut

has recipe_cuisine => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'recipeCuisine',
    json_ld_serializer => \&_serialize_recipe_cuisine,
);

sub _serialize_recipe_cuisine { $_[0]->_serializer('recipe_cuisine') }


=head2 C<recipe_ingredient>

C<recipeIngredient>

A single ingredient used in the recipe, e.g. sugar, flour or garlic.


A recipe_ingredient should be one of the following types:

=over

=item C<Str>

=back

=cut

has recipe_ingredient => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'recipeIngredient',
    json_ld_serializer => \&_serialize_recipe_ingredient,
);

sub _serialize_recipe_ingredient { $_[0]->_serializer('recipe_ingredient') }


=head2 C<recipe_instructions>

C<recipeInstructions>

A step in making the recipe, in the form of a single item (document, video,
etc.) or an ordered list with HowToStep and/or HowToSection items.


A recipe_instructions should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::ItemList']>

=item C<InstanceOf['SemanticWeb::Schema::CreativeWork']>

=item C<Str>

=back

=cut

has recipe_instructions => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'recipeInstructions',
    json_ld_serializer => \&_serialize_recipe_instructions,
);

sub _serialize_recipe_instructions { $_[0]->_serializer('recipe_instructions') }


=head2 C<recipe_yield>

C<recipeYield>

The quantity produced by the recipe (for example, number of people served,
number of servings, etc).


A recipe_yield should be one of the following types:

=over

=item C<Str>

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=back

=cut

has recipe_yield => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'recipeYield',
    json_ld_serializer => \&_serialize_recipe_yield,
);

sub _serialize_recipe_yield { $_[0]->_serializer('recipe_yield') }


=head2 C<suitable_for_diet>

C<suitableForDiet>

Indicates a dietary restriction or guideline for which this recipe or menu
item is suitable, e.g. diabetic, halal etc.


A suitable_for_diet should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::RestrictedDiet']>

=back

=cut

has suitable_for_diet => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'suitableForDiet',
    json_ld_serializer => \&_serialize_suitable_for_diet,
);

sub _serialize_suitable_for_diet { $_[0]->_serializer('suitable_for_diet') }




around json_ld_type => sub { return 'Recipe' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
       'cookTime' => \&_serialize_cook_time,
       'cookingMethod' => \&_serialize_cooking_method,
       'ingredients' => \&_serialize_ingredients,
       'nutrition' => \&_serialize_nutrition,
       'recipeCategory' => \&_serialize_recipe_category,
       'recipeCuisine' => \&_serialize_recipe_cuisine,
       'recipeIngredient' => \&_serialize_recipe_ingredient,
       'recipeInstructions' => \&_serialize_recipe_instructions,
       'recipeYield' => \&_serialize_recipe_yield,
       'suitableForDiet' => \&_serialize_suitable_for_diet,
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::HowTo>

=cut

1;
