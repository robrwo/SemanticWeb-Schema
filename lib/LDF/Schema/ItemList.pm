package LDF::Schema::ItemList;

# ABSTRACT: A list of items of any sort&#x2014;for example

use Moo;

extends qw/ LDF::Schema::Intangible /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A list of items of any sort&#x2014;for example, Top 10 Movies About
Weathermen, or Top 100 Party Songs. Not to be confused with HTML lists,
which are often used only for formatting.



Note that this class was generated automatically from the following sources:

=over

=item L<http://schema.org/version/3.3/ext-meta.rdf>

=item L<http://schema.org/version/3.3/schema.rdf>

=back


=head1 ATTRIBUTES


=head2 C<item_list_element>

C<itemListElement>

=begin html

For itemListElement values, you can use simple strings (e.g. "Peter",
"Paul", "Mary"), existing entities, or use ListItem.</p> <p>Text values are
best if the elements in the list are plain strings. Existing entities are
best for a simple, unordered list of existing things in your data. ListItem
is used with ordered lists when you want to provide additional context
about the element in that list or when the same item might be in different
places in different lists.</p> <p>Note: The order of elements in your
mark-up is not sufficient for indicating the order or elements. Use
ListItem with a 'position' property in such cases.

=end html


A item_list_element should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Thing']>

=item C<InstanceOf['LDF::Schema::ListItem']>

=item C<Str>

=back

=cut

has item_list_element => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<item_list_order>

C<itemListOrder>

Type of ordering (e.g. Ascending, Descending, Unordered).


A item_list_order should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::ItemListOrderType']>

=item C<Str>

=back

=cut

has item_list_order => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<number_of_items>

C<numberOfItems>

The number of items in an ItemList. Note that some descriptions might not
fully describe all items in a list (e.g., multi-page pagination); in such
cases, the numberOfItems would be for the entire list.


A number_of_items should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Integer']>

=back

=cut

has number_of_items => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'ItemList' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields,
      { itemListElement => 'item_list_element' },
      { itemListOrder => 'item_list_order' },
      { numberOfItems => 'number_of_items' },
    ]
};




=head1 SEE ALSO



L<LDF::Schema::Intangible>

=cut

1;
