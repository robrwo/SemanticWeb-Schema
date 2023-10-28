use utf8;

package SemanticWeb::Schema::MusicPlaylist;

# ABSTRACT: A collection of music tracks in playlist form.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork /;


use MooX::JSON_LD 'MusicPlaylist';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v23.0.1';

=encoding utf8

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

=head2 C<_has_num_tracks>

A predicate for the L</num_tracks> attribute.

=cut

has num_tracks => (
    is        => 'rw',
    predicate => '_has_num_tracks',
    json_ld   => 'numTracks',
);


=head2 C<track>



A music recording (track)&#x2014;usually a single song. If an ItemList is
given, the list should contain items of type MusicRecording.


A track should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::ItemList']>

=item C<InstanceOf['SemanticWeb::Schema::MusicRecording']>

=back

=head2 C<_has_track>

A predicate for the L</track> attribute.

=cut

has track => (
    is        => 'rw',
    predicate => '_has_track',
    json_ld   => 'track',
);


=head2 C<tracks>



A music recording (track)&#x2014;usually a single song.


A tracks should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MusicRecording']>

=back

=head2 C<_has_tracks>

A predicate for the L</tracks> attribute.

=cut

has tracks => (
    is        => 'rw',
    predicate => '_has_tracks',
    json_ld   => 'tracks',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWork>

=cut

1;
