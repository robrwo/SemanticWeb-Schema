package SemanticWeb::Schema::MediaObject;

# ABSTRACT: A media object

use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork /;


use MooX::JSON_LD 'MediaObject';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.2';

=head1 DESCRIPTION

A media object, such as an image, video, or audio object embedded in a web
page or a downloadable dataset i.e. DataDownload. Note that a creative work
may have many media objects associated with it on the same web page. For
example, a page about a single song (MusicRecording) may have a music video
(VideoObject), and a high and low bandwidth audio stream (2 AudioObject's).




=head1 ATTRIBUTES


=head2 C<associated_article>

C<associatedArticle>

A NewsArticle associated with the Media Object.


A associated_article should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::NewsArticle']>

=back

=cut

has associated_article => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'associatedArticle',
);


=head2 C<bitrate>



The bitrate of the media object.


A bitrate should be one of the following types:

=over

=item C<Str>

=back

=cut

has bitrate => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'bitrate',
);


=head2 C<content_size>

C<contentSize>

File size in (mega/kilo) bytes.


A content_size should be one of the following types:

=over

=item C<Str>

=back

=cut

has content_size => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'contentSize',
);


=head2 C<content_url>

C<contentUrl>

Actual bytes of the media object, for example the image file or video file.


A content_url should be one of the following types:

=over

=item C<Str>

=back

=cut

has content_url => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'contentUrl',
);


=head2 C<duration>



=begin html

The duration of the item (movie, audio recording, event, etc.) in <a
href="http://en.wikipedia.org/wiki/ISO_8601">ISO 8601 date format</a>.

=end html


A duration should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Duration']>

=back

=cut

has duration => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'duration',
);


=head2 C<embed_url>

C<embedUrl>

=begin html

A URL pointing to a player for a specific video. In general, this is the
information in the <code>src</code> element of an <code>embed</code> tag
and should not be the same as the content of the <code>loc</code> tag.

=end html


A embed_url should be one of the following types:

=over

=item C<Str>

=back

=cut

has embed_url => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'embedUrl',
);


=head2 C<encodes_creative_work>

C<encodesCreativeWork>

The CreativeWork encoded by this media object.


A encodes_creative_work should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::CreativeWork']>

=back

=cut

has encodes_creative_work => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'encodesCreativeWork',
);


=head2 C<encoding_format>

C<encodingFormat>

mp3, mpeg4, etc.


A encoding_format should be one of the following types:

=over

=item C<Str>

=back

=cut

has encoding_format => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'encodingFormat',
);


=head2 C<height>



The height of the item.


A height should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Distance']>

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=back

=cut

has height => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'height',
);


=head2 C<player_type>

C<playerType>

Player type required&#x2014;for example, Flash or Silverlight.


A player_type should be one of the following types:

=over

=item C<Str>

=back

=cut

has player_type => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'playerType',
);


=head2 C<production_company>

C<productionCompany>

The production company or studio responsible for the item e.g. series,
video game, episode etc.


A production_company should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=back

=cut

has production_company => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'productionCompany',
);


=head2 C<regions_allowed>

C<regionsAllowed>

=begin html

The regions where the media is allowed. If not specified, then it's assumed
to be allowed everywhere. Specify the countries in <a
href="http://en.wikipedia.org/wiki/ISO_3166">ISO 3166 format</a>.

=end html


A regions_allowed should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Place']>

=back

=cut

has regions_allowed => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'regionsAllowed',
);


=head2 C<requires_subscription>

C<requiresSubscription>

=begin html

Indicates if use of the media require a subscription (either paid or free).
Allowed values are <code>true</code> or <code>false</code> (note that an
earlier version had 'yes', 'no').

=end html


A requires_subscription should be one of the following types:

=over

=item C<Bool>

=back

=cut

has requires_subscription => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'requiresSubscription',
);


=head2 C<upload_date>

C<uploadDate>

Date when this media object was uploaded to this site.


A upload_date should be one of the following types:

=over

=item C<Str>

=back

=cut

has upload_date => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'uploadDate',
);


=head2 C<width>



The width of the item.


A width should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Distance']>

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=back

=cut

has width => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'width',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWork>

=cut

1;