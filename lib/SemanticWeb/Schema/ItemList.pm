use utf8;

package SemanticWeb::Schema::ItemList;

# ABSTRACT: A list of items of any sort—for example

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::Intangible /;


use MooX::JSON_LD 'ItemList';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v22.0.1';

=encoding utf8

=head1 DESCRIPTION

A list of items of any sort&#x2014;for example, Top 10 Movies About
Weathermen, or Top 100 Party Songs. Not to be confused with HTML lists,
which are often used only for formatting.




=head1 ATTRIBUTES


=head2 C<item_list_element>

C<itemListElement>

For itemListElement values, you can use simple strings (e.g. "Peter",
"Paul", "Mary"), existing entities, or use ListItem. Text values are best
if the elements in the list are plain strings. Existing entities are best
for a simple, unordered list of existing things in your data. ListItem is
used with ordered lists when you want to provide additional context about
the element in that list or when the same item might be in different places
in different lists. Note: The order of elements in your mark-up is not
sufficient for indicating the order or elements. Use ListItem with a
'position' property in such cases.


A item_list_element should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::ListItem']>

=item C<InstanceOf['SemanticWeb::Schema::Thing']>

=item C<Str>

=back

=head2 C<_has_item_list_element>

A predicate for the L</item_list_element> attribute.

=cut

has item_list_element => (
    is        => 'rw',
    predicate => '_has_item_list_element',
    json_ld   => 'itemListElement',
);


=head2 C<item_list_order>

C<itemListOrder>

Type of ordering (e.g. Ascending, Descending, Unordered).


A item_list_order should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::ItemListOrderType']>

=item C<Str>

=back

=head2 C<_has_item_list_order>

A predicate for the L</item_list_order> attribute.

=cut

has item_list_order => (
    is        => 'rw',
    predicate => '_has_item_list_order',
    json_ld   => 'itemListOrder',
);


=head2 C<number_of_items>

C<numberOfItems>

The number of items in an ItemList. Note that some descriptions might not
fully describe all items in a list (e.g., multi-page pagination); in such
cases, the numberOfItems would be for the entire list.


A number_of_items should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Integer']>

=back

=head2 C<_has_number_of_items>

A predicate for the L</number_of_items> attribute.

=cut

has number_of_items => (
    is        => 'rw',
    predicate => '_has_number_of_items',
    json_ld   => 'numberOfItems',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Intangible>

=cut

1;
