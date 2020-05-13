use utf8;

package SemanticWeb::Schema::MediaObject;

# ABSTRACT: A media object

use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork /;


use MooX::JSON_LD 'MediaObject';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v8.0.0';

=encoding utf8

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

=head2 C<_has_associated_article>

A predicate for the L</associated_article> attribute.

=cut

has associated_article => (
    is        => 'rw',
    predicate => '_has_associated_article',
    json_ld   => 'associatedArticle',
);


=head2 C<bitrate>



The bitrate of the media object.


A bitrate should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_bitrate>

A predicate for the L</bitrate> attribute.

=cut

has bitrate => (
    is        => 'rw',
    predicate => '_has_bitrate',
    json_ld   => 'bitrate',
);


=head2 C<content_size>

C<contentSize>

File size in (mega/kilo) bytes.


A content_size should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_content_size>

A predicate for the L</content_size> attribute.

=cut

has content_size => (
    is        => 'rw',
    predicate => '_has_content_size',
    json_ld   => 'contentSize',
);


=head2 C<content_url>

C<contentUrl>

Actual bytes of the media object, for example the image file or video file.


A content_url should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_content_url>

A predicate for the L</content_url> attribute.

=cut

has content_url => (
    is        => 'rw',
    predicate => '_has_content_url',
    json_ld   => 'contentUrl',
);


=head2 C<duration>



=begin html

<p>The duration of the item (movie, audio recording, event, etc.) in <a
href="http://en.wikipedia.org/wiki/ISO_8601">ISO 8601 date format</a>.<p>

=end html


A duration should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Duration']>

=back

=head2 C<_has_duration>

A predicate for the L</duration> attribute.

=cut

has duration => (
    is        => 'rw',
    predicate => '_has_duration',
    json_ld   => 'duration',
);


=head2 C<embed_url>

C<embedUrl>

=begin html

<p>A URL pointing to a player for a specific video. In general, this is the
information in the <code>src</code> element of an <code>embed</code> tag
and should not be the same as the content of the <code>loc</code> tag.<p>

=end html


A embed_url should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_embed_url>

A predicate for the L</embed_url> attribute.

=cut

has embed_url => (
    is        => 'rw',
    predicate => '_has_embed_url',
    json_ld   => 'embedUrl',
);


=head2 C<encodes_creative_work>

C<encodesCreativeWork>

The CreativeWork encoded by this media object.


A encodes_creative_work should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::CreativeWork']>

=back

=head2 C<_has_encodes_creative_work>

A predicate for the L</encodes_creative_work> attribute.

=cut

has encodes_creative_work => (
    is        => 'rw',
    predicate => '_has_encodes_creative_work',
    json_ld   => 'encodesCreativeWork',
);


=head2 C<encoding_format>

C<encodingFormat>

=begin html

<p>Media type typically expressed using a MIME format (see <a
href="http://www.iana.org/assignments/media-types/media-types.xhtml">IANA
site</a> and <a
href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Basics_of_HTTP/MIME
_types">MDN reference</a>) e.g. application/zip for a SoftwareApplication
binary, audio/mpeg for .mp3 etc.).<br/><br/> In cases where a <a
class="localLink" href="http://schema.org/CreativeWork">CreativeWork</a>
has several media type representations, <a class="localLink"
href="http://schema.org/encoding">encoding</a> can be used to indicate each
<a class="localLink" href="http://schema.org/MediaObject">MediaObject</a>
alongside particular <a class="localLink"
href="http://schema.org/encodingFormat">encodingFormat</a>
information.<br/><br/> Unregistered or niche encoding and file formats can
be indicated instead via the most appropriate URL, e.g. defining Web page
or a Wikipedia/Wikidata entry.<p>

=end html


A encoding_format should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_encoding_format>

A predicate for the L</encoding_format> attribute.

=cut

has encoding_format => (
    is        => 'rw',
    predicate => '_has_encoding_format',
    json_ld   => 'encodingFormat',
);


=head2 C<end_time>

C<endTime>

=begin html

<p>The endTime of something. For a reserved event or service (e.g.
FoodEstablishmentReservation), the time that it is expected to end. For
actions that span a period of time, when the action was performed. e.g.
John wrote a book from January to <em>December</em>. For media, including
audio and video, it's the time offset of the end of a clip within a larger
file.<br/><br/> Note that Event uses startDate/endDate instead of
startTime/endTime, even when describing dates with times. This situation
may be clarified in future revisions.<p>

=end html


A end_time should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_end_time>

A predicate for the L</end_time> attribute.

=cut

has end_time => (
    is        => 'rw',
    predicate => '_has_end_time',
    json_ld   => 'endTime',
);


=head2 C<height>



The height of the item.


A height should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Distance']>

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=back

=head2 C<_has_height>

A predicate for the L</height> attribute.

=cut

has height => (
    is        => 'rw',
    predicate => '_has_height',
    json_ld   => 'height',
);


=head2 C<player_type>

C<playerType>

Player type required&#x2014;for example, Flash or Silverlight.


A player_type should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_player_type>

A predicate for the L</player_type> attribute.

=cut

has player_type => (
    is        => 'rw',
    predicate => '_has_player_type',
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

=head2 C<_has_production_company>

A predicate for the L</production_company> attribute.

=cut

has production_company => (
    is        => 'rw',
    predicate => '_has_production_company',
    json_ld   => 'productionCompany',
);


=head2 C<regions_allowed>

C<regionsAllowed>

=begin html

<p>The regions where the media is allowed. If not specified, then it's
assumed to be allowed everywhere. Specify the countries in <a
href="http://en.wikipedia.org/wiki/ISO_3166">ISO 3166 format</a>.<p>

=end html


A regions_allowed should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Place']>

=back

=head2 C<_has_regions_allowed>

A predicate for the L</regions_allowed> attribute.

=cut

has regions_allowed => (
    is        => 'rw',
    predicate => '_has_regions_allowed',
    json_ld   => 'regionsAllowed',
);


=head2 C<requires_subscription>

C<requiresSubscription>

=begin html

<p>Indicates if use of the media require a subscription (either paid or
free). Allowed values are <code>true</code> or <code>false</code> (note
that an earlier version had 'yes', 'no').<p>

=end html


A requires_subscription should be one of the following types:

=over

=item C<Bool>

=item C<InstanceOf['SemanticWeb::Schema::MediaSubscription']>

=back

=head2 C<_has_requires_subscription>

A predicate for the L</requires_subscription> attribute.

=cut

has requires_subscription => (
    is        => 'rw',
    predicate => '_has_requires_subscription',
    json_ld   => 'requiresSubscription',
);


=head2 C<start_time>

C<startTime>

=begin html

<p>The startTime of something. For a reserved event or service (e.g.
FoodEstablishmentReservation), the time that it is expected to start. For
actions that span a period of time, when the action was performed. e.g.
John wrote a book from <em>January</em> to December. For media, including
audio and video, it's the time offset of the start of a clip within a
larger file.<br/><br/> Note that Event uses startDate/endDate instead of
startTime/endTime, even when describing dates with times. This situation
may be clarified in future revisions.<p>

=end html


A start_time should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_start_time>

A predicate for the L</start_time> attribute.

=cut

has start_time => (
    is        => 'rw',
    predicate => '_has_start_time',
    json_ld   => 'startTime',
);


=head2 C<upload_date>

C<uploadDate>

Date when this media object was uploaded to this site.


A upload_date should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_upload_date>

A predicate for the L</upload_date> attribute.

=cut

has upload_date => (
    is        => 'rw',
    predicate => '_has_upload_date',
    json_ld   => 'uploadDate',
);


=head2 C<width>



The width of the item.


A width should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Distance']>

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=back

=head2 C<_has_width>

A predicate for the L</width> attribute.

=cut

has width => (
    is        => 'rw',
    predicate => '_has_width',
    json_ld   => 'width',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWork>

=cut

1;
