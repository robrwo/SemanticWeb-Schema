use utf8;

package SemanticWeb::Schema::ListItem;

# ABSTRACT: An list item, e

use Moo;

extends qw/ SemanticWeb::Schema::Intangible /;


use MooX::JSON_LD 'ListItem';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v15.0.0';

=encoding utf8

=head1 DESCRIPTION

An list item, e.g. a step in a checklist or how-to description.




=head1 ATTRIBUTES


=head2 C<item>



An entity represented by an entry in a list or data feed (e.g. an 'artist'
in a list of 'artists').


A item should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Thing']>

=back

=head2 C<_has_item>

A predicate for the L</item> attribute.

=cut

has item => (
    is        => 'rw',
    predicate => '_has_item',
    json_ld   => 'item',
);


=head2 C<next_item>

C<nextItem>

A link to the ListItem that follows the current one.


A next_item should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::ListItem']>

=back

=head2 C<_has_next_item>

A predicate for the L</next_item> attribute.

=cut

has next_item => (
    is        => 'rw',
    predicate => '_has_next_item',
    json_ld   => 'nextItem',
);


=head2 C<position>



The position of an item in a series or sequence of items.


A position should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Integer']>

=item C<Str>

=back

=head2 C<_has_position>

A predicate for the L</position> attribute.

=cut

has position => (
    is        => 'rw',
    predicate => '_has_position',
    json_ld   => 'position',
);


=head2 C<previous_item>

C<previousItem>

A link to the ListItem that precedes the current one.


A previous_item should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::ListItem']>

=back

=head2 C<_has_previous_item>

A predicate for the L</previous_item> attribute.

=cut

has previous_item => (
    is        => 'rw',
    predicate => '_has_previous_item',
    json_ld   => 'previousItem',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Intangible>

=cut

1;
