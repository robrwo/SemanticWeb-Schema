package LDF::Schema::MusicGroup;

# ABSTRACT: A musical group

use Moo;

extends qw/ LDF::Schema::PerformingGroup /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A musical group, such as a band, an orchestra, or a choir. Can also be a
solo musician.



Note that this class was generated automatically from the following sources:

=over

=item L<http://schema.org/version/3.3/schema.rdf>

=back


=head1 ATTRIBUTES


=head2 C<album>



A music album.


A album should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::MusicAlbum']>

=back

=cut

has album => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<albums>



A collection of music albums.


A albums should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::MusicAlbum']>

=back

=cut

has albums => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<genre>



Genre of the creative work, broadcast channel or group.


A genre should be one of the following types:

=over

=item C<Str>

=back

=cut

has genre => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<music_group_member>

C<musicGroupMember>

A member of a music group&#x2014;for example, John, Paul, George, or Ringo.


A music_group_member should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Person']>

=back

=cut

has music_group_member => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<track>



A music recording (track)&#x2014;usually a single song. If an ItemList is
given, the list should contain items of type MusicRecording.


A track should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::MusicRecording']>

=item C<InstanceOf['LDF::Schema::ItemList']>

=back

=cut

has track => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<tracks>



A music recording (track)&#x2014;usually a single song.


A tracks should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::MusicRecording']>

=back

=cut

has tracks => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'MusicGroup' }

=ead2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields,
      { album => 'album' },
      { albums => 'albums' },
      { genre => 'genre' },
      { musicGroupMember => 'music_group_member' },
      { track => 'track' },
      { tracks => 'tracks' },
    ]
};



=head1 SEE ALSO



L<LDF::Schema::PerformingGroup>

=cut

1;
