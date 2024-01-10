use utf8;

package SemanticWeb::Schema::addressRegion;

# ABSTRACT: The region in which the locality is

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'addressRegion';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The region in which the locality is, and which is in the country. For
example, California or another appropriate first-level [Administrative
division](https://en.wikipedia.org/wiki/List_of_administrative_divisions_by
_country).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
