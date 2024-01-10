use utf8;

package SemanticWeb::Schema::itemListElement;

# ABSTRACT: For itemListElement values

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'itemListElement';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

For itemListElement values, you can use simple strings (e.g. "Peter",
"Paul", "Mary"), existing entities, or use ListItem. Text values are best
if the elements in the list are plain strings. Existing entities are best
for a simple, unordered list of existing things in your data. ListItem is
used with ordered lists when you want to provide additional context about
the element in that list or when the same item might be in different places
in different lists. Note: The order of elements in your mark-up is not
sufficient for indicating the order or elements. Use ListItem with a
'position' property in such cases.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
