use utf8;

package SemanticWeb::Schema::BreadcrumbList;

# ABSTRACT: A BreadcrumbList is an ItemList consisting of a chain of linked Web pages

use Moo;

extends qw/ SemanticWeb::Schema::ItemList /;


use MooX::JSON_LD 'BreadcrumbList';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v4.0.2';

=encoding utf8

=head1 DESCRIPTION

=begin html

<p>A BreadcrumbList is an ItemList consisting of a chain of linked Web
pages, typically described using at least their URL and their name, and
typically ending with the current page.<br/><br/> The <a class="localLink"
href="http://schema.org/position">position</a> property is used to
reconstruct the order of the items in a BreadcrumbList The convention is
that a breadcrumb list has an <a class="localLink"
href="http://schema.org/itemListOrder">itemListOrder</a> of <a
class="localLink"
href="http://schema.org/ItemListOrderAscending">ItemListOrderAscending</a>
(lower values listed first), and that the first items in this list
correspond to the "top" or beginning of the breadcrumb trail, e.g. with a
site or section homepage. The specific values of 'position' are not
assigned meaning for a BreadcrumbList, but they should be integers, e.g.
beginning with '1' for the first item in the list.<p>

=end html




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::ItemList>

=cut

1;
