package SemanticWeb::Schema::MusicRelease;

# ABSTRACT: A MusicRelease is a specific release of a music album.

use Moo;

extends qw/ SemanticWeb::Schema::MusicPlaylist /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A MusicRelease is a specific release of a music album.




=head1 ATTRIBUTES


=head2 C<catalog_number>

C<catalogNumber>

The catalog number for the release.


A catalog_number should be one of the following types:

=over

=item C<Str>

=back

=cut

has catalog_number => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'catalogNumber',
    json_ld_serializer => \&_serialize_catalog_number,
);

sub _serialize_catalog_number { $_[0]->_serializer('catalog_number') }


=head2 C<credited_to>

C<creditedTo>

The group the release is credited to if different than the byArtist. For
example, Red and Blue is credited to "Stefani Germanotta Band", but by Lady
Gaga.


A credited_to should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=back

=cut

has credited_to => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'creditedTo',
    json_ld_serializer => \&_serialize_credited_to,
);

sub _serialize_credited_to { $_[0]->_serializer('credited_to') }


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


=head2 C<music_release_format>

C<musicReleaseFormat>

Format of this release (the type of recording media used, ie. compact disc,
digital media, LP, etc.).


A music_release_format should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MusicReleaseFormatType']>

=back

=cut

has music_release_format => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'musicReleaseFormat',
    json_ld_serializer => \&_serialize_music_release_format,
);

sub _serialize_music_release_format { $_[0]->_serializer('music_release_format') }


=head2 C<record_label>

C<recordLabel>

The label that issued the release.


A record_label should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=back

=cut

has record_label => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'recordLabel',
    json_ld_serializer => \&_serialize_record_label,
);

sub _serialize_record_label { $_[0]->_serializer('record_label') }


=head2 C<release_of>

C<releaseOf>

The album this is a release of.


A release_of should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MusicAlbum']>

=back

=cut

has release_of => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'releaseOf',
    json_ld_serializer => \&_serialize_release_of,
);

sub _serialize_release_of { $_[0]->_serializer('release_of') }




around json_ld_type => sub { return 'MusicRelease' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
       'catalogNumber' => \&_serialize_catalog_number,
       'creditedTo' => \&_serialize_credited_to,
       'duration' => \&_serialize_duration,
       'musicReleaseFormat' => \&_serialize_music_release_format,
       'recordLabel' => \&_serialize_record_label,
       'releaseOf' => \&_serialize_release_of,
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::MusicPlaylist>

=cut

1;
