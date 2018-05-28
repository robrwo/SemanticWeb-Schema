package LDF::Schema::MusicRelease;

# ABSTRACT: A MusicRelease is a specific release of a music album.

use Moo;

extends qw/ LDF::Schema::MusicPlaylist /;


use curry;
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
);


=head2 C<credited_to>

C<creditedTo>

The group the release is credited to if different than the byArtist. For
example, Red and Blue is credited to "Stefani Germanotta Band", but by Lady
Gaga.


A credited_to should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Person']>

=item C<InstanceOf['LDF::Schema::Organization']>

=back

=cut

has credited_to => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<duration>



=begin html

The duration of the item (movie, audio recording, event, etc.) in <a
href="http://en.wikipedia.org/wiki/ISO_8601">ISO 8601 date format</a>.

=end html


A duration should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Duration']>

=back

=cut

has duration => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<music_release_format>

C<musicReleaseFormat>

Format of this release (the type of recording media used, ie. compact disc,
digital media, LP, etc.).


A music_release_format should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::MusicReleaseFormatType']>

=back

=cut

has music_release_format => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<record_label>

C<recordLabel>

The label that issued the release.


A record_label should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Organization']>

=back

=cut

has record_label => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<release_of>

C<releaseOf>

The album this is a release of.


A release_of should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::MusicAlbum']>

=back

=cut

has release_of => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'MusicRelease' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields, {
       'catalogNumber' => $self->curry::_serializer('catalog_number'),
       'creditedTo' => $self->curry::_serializer('credited_to'),
       'duration' => $self->curry::_serializer('duration'),
       'musicReleaseFormat' => $self->curry::_serializer('music_release_format'),
       'recordLabel' => $self->curry::_serializer('record_label'),
       'releaseOf' => $self->curry::_serializer('release_of'),
    } ]
};




=head1 SEE ALSO



L<LDF::Schema::MusicPlaylist>

=cut

1;
