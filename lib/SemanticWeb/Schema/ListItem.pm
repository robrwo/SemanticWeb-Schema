use utf8;

package SemanticWeb::Schema::ListItem;

# ABSTRACT: An list item, e

use Moo;

extends qw/ SemanticWeb::Schema::Intangible /;


use MooX::JSON_LD 'ListItem';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.8.1';

=encoding utf8

=head1 DESCRIPTION

An list item, e.g. a step in a checklist or how-to description.




=head1 ATTRIBUTES


=head2 C<item>



An entity represented by an entry in a list or data feed (e.g. an 'artist'
in a list of 'artists')â.


A item should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Thing']>

=back

=cut

has item => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'item',
);


=head2 C<next_item>

C<nextItem>

A link to the ListItem that follows the current one.


A next_item should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::ListItem']>

=back

=cut

has next_item => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'nextItem',
);


=head2 C<position>



The position of an item in a series or sequence of items.


A position should be one of the following types:

=over

=item C<Str>

=item C<InstanceOf['SemanticWeb::Schema::Integer']>

=back

=cut

has position => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'position',
);


=head2 C<previous_item>

C<previousItem>

A link to the ListItem that preceeds the current one.


A previous_item should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::ListItem']>

=back

=cut

has previous_item => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'previousItem',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Intangible>

=cut

1;
