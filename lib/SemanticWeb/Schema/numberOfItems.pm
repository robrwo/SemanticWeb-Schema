use utf8;

package SemanticWeb::Schema::numberOfItems;

# ABSTRACT: The number of items in an ItemList

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'numberOfItems';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The number of items in an ItemList. Note that some descriptions might not
fully describe all items in a list (e.g., multi-page pagination); in such
cases, the numberOfItems would be for the entire list.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
