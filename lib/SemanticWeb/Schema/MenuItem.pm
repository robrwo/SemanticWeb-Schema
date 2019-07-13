use utf8;

package SemanticWeb::Schema::MenuItem;

# ABSTRACT: A food or drink item listed in a menu or menu section.

use Moo;

extends qw/ SemanticWeb::Schema::Intangible /;


use MooX::JSON_LD 'MenuItem';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.8.0';

=encoding utf8

=head1 DESCRIPTION

A food or drink item listed in a menu or menu section.




=head1 ATTRIBUTES


=head2 C<menu_add_on>

C<menuAddOn>

Additional menu item(s) such as a side dish of salad or side order of fries
that can be added to this menu item. Additionally it can be a menu section
containing allowed add-on menu items for this menu item.


A menu_add_on should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MenuSection']>

=item C<InstanceOf['SemanticWeb::Schema::MenuItem']>

=back

=cut

has menu_add_on => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'menuAddOn',
);


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
);


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
);


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
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Intangible>

=cut

1;
