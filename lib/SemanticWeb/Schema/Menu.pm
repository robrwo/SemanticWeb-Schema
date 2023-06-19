use utf8;

package SemanticWeb::Schema::Menu;

# ABSTRACT: A structured representation of food or drink items available from a FoodEstablishment.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork /;


use MooX::JSON_LD 'Menu';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.2';

=encoding utf8

=head1 DESCRIPTION

A structured representation of food or drink items available from a
FoodEstablishment.




=head1 ATTRIBUTES


=head2 C<has_menu_item>

C<hasMenuItem>

A food or drink item contained in a menu or menu section.


A has_menu_item should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MenuItem']>

=back

=head2 C<_has_has_menu_item>

A predicate for the L</has_menu_item> attribute.

=cut

has has_menu_item => (
    is        => 'rw',
    predicate => '_has_has_menu_item',
    json_ld   => 'hasMenuItem',
);


=head2 C<has_menu_section>

C<hasMenuSection>

A subgrouping of the menu (by dishes, course, serving time period, etc.).


A has_menu_section should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MenuSection']>

=back

=head2 C<_has_has_menu_section>

A predicate for the L</has_menu_section> attribute.

=cut

has has_menu_section => (
    is        => 'rw',
    predicate => '_has_has_menu_section',
    json_ld   => 'hasMenuSection',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWork>

=cut

1;
