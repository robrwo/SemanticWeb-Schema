package SemanticWeb::Schema::ImageObject;

# ABSTRACT: An image file.

use Moo;

extends qw/ SemanticWeb::Schema::MediaObject /;


use MooX::JSON_LD 'ImageObject';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

An image file.




=head1 ATTRIBUTES


=head2 C<caption>



The caption for this object.


A caption should be one of the following types:

=over

=item C<Str>

=back

=cut

has caption => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'caption',
    json_ld_serializer => \&_serialize_caption,
);

sub _serialize_caption { $_[0]->_serializer('caption') }


=head2 C<exif_data>

C<exifData>

exif data for this object.


A exif_data should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::PropertyValue']>

=item C<Str>

=back

=cut

has exif_data => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'exifData',
    json_ld_serializer => \&_serialize_exif_data,
);

sub _serialize_exif_data { $_[0]->_serializer('exif_data') }


=head2 C<representative_of_page>

C<representativeOfPage>

Indicates whether this image is representative of the content of the page.


A representative_of_page should be one of the following types:

=over

=item C<Bool>

=back

=cut

has representative_of_page => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'representativeOfPage',
    json_ld_serializer => \&_serialize_representative_of_page,
);

sub _serialize_representative_of_page { $_[0]->_serializer('representative_of_page') }


=head2 C<thumbnail>



Thumbnail image for an image or video.


A thumbnail should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::ImageObject']>

=back

=cut

has thumbnail => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'thumbnail',
    json_ld_serializer => \&_serialize_thumbnail,
);

sub _serialize_thumbnail { $_[0]->_serializer('thumbnail') }




=head1 SEE ALSO



L<SemanticWeb::Schema::MediaObject>

=cut

1;
