use utf8;

package SemanticWeb::Schema::encodingFormat;

# ABSTRACT: Media type typically expressed using a MIME format (see [IANA site](http://www

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'encodingFormat';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Media type typically expressed using a MIME format (see L<IANA site|http://www.iana.org/assignments/media-types/media-types.xhtml> and L<MDN reference|https://developer.mozilla.org/en-US/docs/Web/HTTP/Basics_of_HTTP/MIME_types>), e.g. application/zip for a SoftwareApplication binary, audio/mpeg for .mp3 etc.

In cases where a L<SemanticWeb::Schema::CreativeWork> has several media type representations, [[encoding]] can be used to indicate each L<SemanticWeb::Schema::MediaObject> alongside particular [[encodingFormat]] information.

Unregistered or niche encoding and file formats can be indicated instead via the most appropriate URL, e.g. defining Web page or a Wikipedia/Wikidata entry.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
