package LDF::Schema::NutritionInformation;

# ABSTRACT: Nutritional information about the recipe.

use Moo;

extends qw/ LDF::Schema::StructuredValue /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

Nutritional information about the recipe.




=head1 ATTRIBUTES


=head2 C<calories>



The number of calories.


A calories should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Energy']>

=back

=cut

has calories => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<carbohydrate_content>

C<carbohydrateContent>

The number of grams of carbohydrates.


A carbohydrate_content should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Mass']>

=back

=cut

has carbohydrate_content => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<cholesterol_content>

C<cholesterolContent>

The number of milligrams of cholesterol.


A cholesterol_content should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Mass']>

=back

=cut

has cholesterol_content => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<fat_content>

C<fatContent>

The number of grams of fat.


A fat_content should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Mass']>

=back

=cut

has fat_content => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<fiber_content>

C<fiberContent>

The number of grams of fiber.


A fiber_content should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Mass']>

=back

=cut

has fiber_content => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<protein_content>

C<proteinContent>

The number of grams of protein.


A protein_content should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Mass']>

=back

=cut

has protein_content => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<saturated_fat_content>

C<saturatedFatContent>

The number of grams of saturated fat.


A saturated_fat_content should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Mass']>

=back

=cut

has saturated_fat_content => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<serving_size>

C<servingSize>

The serving size, in terms of the number of volume or mass.


A serving_size should be one of the following types:

=over

=item C<Str>

=back

=cut

has serving_size => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<sodium_content>

C<sodiumContent>

The number of milligrams of sodium.


A sodium_content should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Mass']>

=back

=cut

has sodium_content => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<sugar_content>

C<sugarContent>

The number of grams of sugar.


A sugar_content should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Mass']>

=back

=cut

has sugar_content => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<trans_fat_content>

C<transFatContent>

The number of grams of trans fat.


A trans_fat_content should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Mass']>

=back

=cut

has trans_fat_content => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<unsaturated_fat_content>

C<unsaturatedFatContent>

The number of grams of unsaturated fat.


A unsaturated_fat_content should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Mass']>

=back

=cut

has unsaturated_fat_content => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'NutritionInformation' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields,
      { calories => 'calories' },
      { carbohydrateContent => 'carbohydrate_content' },
      { cholesterolContent => 'cholesterol_content' },
      { fatContent => 'fat_content' },
      { fiberContent => 'fiber_content' },
      { proteinContent => 'protein_content' },
      { saturatedFatContent => 'saturated_fat_content' },
      { servingSize => 'serving_size' },
      { sodiumContent => 'sodium_content' },
      { sugarContent => 'sugar_content' },
      { transFatContent => 'trans_fat_content' },
      { unsaturatedFatContent => 'unsaturated_fat_content' },
    ]
};




=head1 SEE ALSO



L<LDF::Schema::StructuredValue>

=cut

1;
