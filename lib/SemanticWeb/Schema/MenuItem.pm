package SemanticWeb::Schema::MenuItem;

# ABSTRACT: A food or drink item listed in a menu or menu section.

use Moo;

extends qw/ SemanticWeb::Schema::Intangible /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A food or drink item listed in a menu or menu section.




=head1 ATTRIBUTES


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


=head2 C<offers>



An offer to provide this item&#x2014;for example, an offer to sell a
product, rent the DVD of a movie, perform a service, or give away tickets
to an event.


A offers should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Offer']>

=back

=cut

has offers => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'offers',
    json_ld_serializer => \&_serialize_offers,
);

sub _serialize_offers { $_[0]->_serializer('offers') }


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




around json_ld_type => sub { return 'MenuItem' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
       'nutrition' => \&_serialize_nutrition,
       'offers' => \&_serialize_offers,
       'suitableForDiet' => \&_serialize_suitable_for_diet,
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::Intangible>

=cut

1;
