package LDF::Schema::Recipe;

# ABSTRACT: A recipe

use Moo;

extends qw/ LDF::Schema::HowTo /;


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



Note that this class was generated automatically from the following sources:

=over

=item L<http://schema.org/version/3.3/ext-meta.rdf>

=item L<http://schema.org/version/3.3/schema.rdf>

=back


=head1 ATTRIBUTES


=head2 C<cook_time>

C<cookTime>

=begin html

The time it takes to actually cook the dish, in <a
href="http://en.wikipedia.org/wiki/ISO_8601">ISO 8601 duration format</a>.

=end html


A cook_time should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Duration']>

=back

=cut

has cook_time => (
    is        => 'rw',
    predicate => 1,
);


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
);


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
);


=head2 C<nutrition>



Nutrition information about the recipe or menu item.


A nutrition should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::NutritionInformation']>

=back

=cut

has nutrition => (
    is        => 'rw',
    predicate => 1,
);


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
);


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
);


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
);


=head2 C<recipe_instructions>

C<recipeInstructions>

A step in making the recipe, in the form of a single item (document, video,
etc.) or an ordered list with HowToStep and/or HowToSection items.


A recipe_instructions should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::ItemList']>

=item C<InstanceOf['LDF::Schema::CreativeWork']>

=item C<Str>

=back

=cut

has recipe_instructions => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<recipe_yield>

C<recipeYield>

The quantity produced by the recipe (for example, number of people served,
number of servings, etc).


A recipe_yield should be one of the following types:

=over

=item C<Str>

=item C<InstanceOf['LDF::Schema::QuantitativeValue']>

=back

=cut

has recipe_yield => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<suitable_for_diet>

C<suitableForDiet>

Indicates a dietary restriction or guideline for which this recipe or menu
item is suitable, e.g. diabetic, halal etc.


A suitable_for_diet should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::RestrictedDiet']>

=back

=cut

has suitable_for_diet => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'Recipe' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields,
      { cookTime => 'cook_time' },
      { cookingMethod => 'cooking_method' },
      { ingredients => 'ingredients' },
      { nutrition => 'nutrition' },
      { recipeCategory => 'recipe_category' },
      { recipeCuisine => 'recipe_cuisine' },
      { recipeIngredient => 'recipe_ingredient' },
      { recipeInstructions => 'recipe_instructions' },
      { recipeYield => 'recipe_yield' },
      { suitableForDiet => 'suitable_for_diet' },
    ]
};




=head1 SEE ALSO



L<LDF::Schema::HowTo>

=cut

1;
