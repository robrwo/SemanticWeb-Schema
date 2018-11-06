use utf8;

package SemanticWeb::Schema::MusicPlaylist;

# ABSTRACT: A collection of music tracks in playlist form.

use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork /;


use MooX::JSON_LD 'MusicPlaylist';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.4';

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

=cut

has num_tracks => (
    is        => 'rw',
    predicate => 1,
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

=cut

has track => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'track',
);


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
);




=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWork>

=cut

1;
