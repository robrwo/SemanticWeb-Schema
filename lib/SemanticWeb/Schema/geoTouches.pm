use utf8;

package SemanticWeb::Schema::geoTouches;

# ABSTRACT: Represents spatial relations in which two geometries (or the places they represent) touch: "they have at least one boundary point in common

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'geoTouches';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Represents spatial relations in which two geometries (or the places they
represent) touch: "they have at least one boundary point in common, but no
interior points." (A symmetric relationship, as defined in
[DE-9IM](https://en.wikipedia.org/wiki/DE-9IM).)




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
