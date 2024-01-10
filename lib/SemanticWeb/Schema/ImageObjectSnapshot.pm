use utf8;

package SemanticWeb::Schema::ImageObjectSnapshot;

# ABSTRACT: A specific and exact (byte-for-byte) version of an [[ImageObject]]

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::ImageObject /;


use MooX::JSON_LD 'ImageObjectSnapshot';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A specific and exact (byte-for-byte) version of an L<SemanticWeb::Schema::ImageObject>. Two byte-for-byte identical files, for the purposes of this type, considered identical. If they have different embedded metadata (e.g. XMP, EXIF) the files will differ. Different external facts about the files, e.g. creator or dateCreated that aren't represented in their actual content, do not affect this notion of identity.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::ImageObject>

=cut

1;
