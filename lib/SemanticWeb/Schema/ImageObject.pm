use utf8;

package SemanticWeb::Schema::ImageObject;

# ABSTRACT: An image file.

use Moo;

extends qw/ SemanticWeb::Schema::MediaObject /;


use MooX::JSON_LD 'ImageObject';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v5.0.2';

=encoding utf8

=head1 DESCRIPTION

An image file.




=head1 ATTRIBUTES


=head2 C<caption>



=begin html

<p>The caption for this object. For downloadable machine formats (closed
caption, subtitles etc.) use MediaObject and indicate the <a
class="localLink"
href="http://schema.org/encodingFormat">encodingFormat</a>.<p>

=end html


A caption should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MediaObject']>

=item C<Str>

=back

=head2 C<_has_caption>

A predicate for the L</caption> attribute.

=cut

has caption => (
    is        => 'rw',
    predicate => '_has_caption',
    json_ld   => 'caption',
);


=head2 C<exif_data>

C<exifData>

exif data for this object.


A exif_data should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::PropertyValue']>

=item C<Str>

=back

=head2 C<_has_exif_data>

A predicate for the L</exif_data> attribute.

=cut

has exif_data => (
    is        => 'rw',
    predicate => '_has_exif_data',
    json_ld   => 'exifData',
);


=head2 C<representative_of_page>

C<representativeOfPage>

Indicates whether this image is representative of the content of the page.


A representative_of_page should be one of the following types:

=over

=item C<Bool>

=back

=head2 C<_has_representative_of_page>

A predicate for the L</representative_of_page> attribute.

=cut

has representative_of_page => (
    is        => 'rw',
    predicate => '_has_representative_of_page',
    json_ld   => 'representativeOfPage',
);


=head2 C<thumbnail>



Thumbnail image for an image or video.


A thumbnail should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::ImageObject']>

=back

=head2 C<_has_thumbnail>

A predicate for the L</thumbnail> attribute.

=cut

has thumbnail => (
    is        => 'rw',
    predicate => '_has_thumbnail',
    json_ld   => 'thumbnail',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::MediaObject>

=cut

1;
