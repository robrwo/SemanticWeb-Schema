package SemanticWeb::Schema::MusicPlaylist;

# ABSTRACT: A collection of music tracks in playlist form.

use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A collection of music tracks in playlist form.




=head1 ATTRIBUTES


=head2 C<num_tracks>

C<numTracks>

The number of tracks in this album or playlist.


A num_tracks should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Integer']>

=back

=cut

has num_tracks => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'numTracks',
    json_ld_serializer => \&_serialize_num_tracks,
);

sub _serialize_num_tracks { $_[0]->_serializer('num_tracks') }


=head2 C<track>



A music recording (track)&#x2014;usually a single song. If an ItemList is
given, the list should contain items of type MusicRecording.


A track should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MusicRecording']>

=item C<InstanceOf['SemanticWeb::Schema::ItemList']>

=back

=cut

has track => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'track',
    json_ld_serializer => \&_serialize_track,
);

sub _serialize_track { $_[0]->_serializer('track') }


=head2 C<tracks>



A music recording (track)&#x2014;usually a single song.


A tracks should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MusicRecording']>

=back

=cut

has tracks => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'tracks',
    json_ld_serializer => \&_serialize_tracks,
);

sub _serialize_tracks { $_[0]->_serializer('tracks') }




around json_ld_type => sub { return 'MusicPlaylist' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
       'numTracks' => \&_serialize_num_tracks,
       'track' => \&_serialize_track,
       'tracks' => \&_serialize_tracks,
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWork>

=cut

1;
