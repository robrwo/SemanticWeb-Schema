package LDF::Schema::ImageObject;

# ABSTRACT: An image file.

use Moo;

extends qw/ LDF::Schema::MediaObject /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

An image file.



Note that this class was generated automatically from the following sources:

=over

=item L<http://schema.org/version/3.3/schema.rdf>

=back


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
);


=head2 C<exif_data>

C<exifData>

exif data for this object.


A exif_data should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::PropertyValue']>

=item C<Str>

=back

=cut

has exif_data => (
    is        => 'rw',
    predicate => 1,
);


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
);


=head2 C<thumbnail>



Thumbnail image for an image or video.


A thumbnail should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::ImageObject']>

=back

=cut

has thumbnail => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'ImageObject' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields,
      { caption => 'caption' },
      { exifData => 'exif_data' },
      { representativeOfPage => 'representative_of_page' },
      { thumbnail => 'thumbnail' },
    ]
};




=head1 SEE ALSO



L<LDF::Schema::MediaObject>

=cut

1;
