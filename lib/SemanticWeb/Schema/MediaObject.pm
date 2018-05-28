package SemanticWeb::Schema::MediaObject;

# ABSTRACT: A media object

use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

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
    json_ld_serializer => \&_serialize_associated_article,
);

sub _serialize_associated_article { $_[0]->_serializer('associated_article') }


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
    json_ld_serializer => \&_serialize_bitrate,
);

sub _serialize_bitrate { $_[0]->_serializer('bitrate') }


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
    json_ld_serializer => \&_serialize_content_size,
);

sub _serialize_content_size { $_[0]->_serializer('content_size') }


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
    json_ld_serializer => \&_serialize_content_url,
);

sub _serialize_content_url { $_[0]->_serializer('content_url') }


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
    json_ld_serializer => \&_serialize_duration,
);

sub _serialize_duration { $_[0]->_serializer('duration') }


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
    json_ld_serializer => \&_serialize_embed_url,
);

sub _serialize_embed_url { $_[0]->_serializer('embed_url') }


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
    json_ld_serializer => \&_serialize_encodes_creative_work,
);

sub _serialize_encodes_creative_work { $_[0]->_serializer('encodes_creative_work') }


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
    json_ld_serializer => \&_serialize_encoding_format,
);

sub _serialize_encoding_format { $_[0]->_serializer('encoding_format') }


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
    json_ld_serializer => \&_serialize_height,
);

sub _serialize_height { $_[0]->_serializer('height') }


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
    json_ld_serializer => \&_serialize_player_type,
);

sub _serialize_player_type { $_[0]->_serializer('player_type') }


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
    json_ld_serializer => \&_serialize_production_company,
);

sub _serialize_production_company { $_[0]->_serializer('production_company') }


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
    json_ld_serializer => \&_serialize_regions_allowed,
);

sub _serialize_regions_allowed { $_[0]->_serializer('regions_allowed') }


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
    json_ld_serializer => \&_serialize_requires_subscription,
);

sub _serialize_requires_subscription { $_[0]->_serializer('requires_subscription') }


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
    json_ld_serializer => \&_serialize_upload_date,
);

sub _serialize_upload_date { $_[0]->_serializer('upload_date') }


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
    json_ld_serializer => \&_serialize_width,
);

sub _serialize_width { $_[0]->_serializer('width') }




around json_ld_type => sub { return 'MediaObject' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
       'associatedArticle' => \&_serialize_associated_article,
       'bitrate' => \&_serialize_bitrate,
       'contentSize' => \&_serialize_content_size,
       'contentUrl' => \&_serialize_content_url,
       'duration' => \&_serialize_duration,
       'embedUrl' => \&_serialize_embed_url,
       'encodesCreativeWork' => \&_serialize_encodes_creative_work,
       'encodingFormat' => \&_serialize_encoding_format,
       'height' => \&_serialize_height,
       'playerType' => \&_serialize_player_type,
       'productionCompany' => \&_serialize_production_company,
       'regionsAllowed' => \&_serialize_regions_allowed,
       'requiresSubscription' => \&_serialize_requires_subscription,
       'uploadDate' => \&_serialize_upload_date,
       'width' => \&_serialize_width,
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWork>

=cut

1;
