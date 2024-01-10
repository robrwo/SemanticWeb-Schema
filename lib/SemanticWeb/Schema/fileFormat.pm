use utf8;

package SemanticWeb::Schema::fileFormat;

# ABSTRACT: Media type

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'fileFormat';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Media type, typically MIME format (see [IANA
site](http://www.iana.org/assignments/media-types/media-types.xhtml)) of
the content, e.g. application/zip of a SoftwareApplication binary. In cases
where a CreativeWork has several media type representations, 'encoding' can
be used to indicate each MediaObject alongside particular fileFormat
information. Unregistered or niche file formats can be indicated instead
via the most appropriate URL, e.g. defining Web page or a Wikipedia entry.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
