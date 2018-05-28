package SemanticWeb::Schema::MusicComposition;

# ABSTRACT: A musical composition.

use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork /;


use MooX::JSON_LD 'MusicComposition';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A musical composition.




=head1 ATTRIBUTES


=head2 C<composer>



The person or organization who wrote a composition, or who is the composer
of a work performed at some event.


A composer should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=back

=cut

has composer => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'composer',
    json_ld_serializer => \&_serialize_composer,
);

sub _serialize_composer { $_[0]->_serializer('composer') }


=head2 C<first_performance>

C<firstPerformance>

The date and place the work was first performed.


A first_performance should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Event']>

=back

=cut

has first_performance => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'firstPerformance',
    json_ld_serializer => \&_serialize_first_performance,
);

sub _serialize_first_performance { $_[0]->_serializer('first_performance') }


=head2 C<included_composition>

C<includedComposition>

Smaller compositions included in this work (e.g. a movement in a symphony).


A included_composition should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MusicComposition']>

=back

=cut

has included_composition => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'includedComposition',
    json_ld_serializer => \&_serialize_included_composition,
);

sub _serialize_included_composition { $_[0]->_serializer('included_composition') }


=head2 C<iswc_code>

C<iswcCode>

The International Standard Musical Work Code for the composition.


A iswc_code should be one of the following types:

=over

=item C<Str>

=back

=cut

has iswc_code => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'iswcCode',
    json_ld_serializer => \&_serialize_iswc_code,
);

sub _serialize_iswc_code { $_[0]->_serializer('iswc_code') }


=head2 C<lyricist>



The person who wrote the words.


A lyricist should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=cut

has lyricist => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'lyricist',
    json_ld_serializer => \&_serialize_lyricist,
);

sub _serialize_lyricist { $_[0]->_serializer('lyricist') }


=head2 C<lyrics>



The words in the song.


A lyrics should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::CreativeWork']>

=back

=cut

has lyrics => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'lyrics',
    json_ld_serializer => \&_serialize_lyrics,
);

sub _serialize_lyrics { $_[0]->_serializer('lyrics') }


=head2 C<music_arrangement>

C<musicArrangement>

An arrangement derived from the composition.


A music_arrangement should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MusicComposition']>

=back

=cut

has music_arrangement => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'musicArrangement',
    json_ld_serializer => \&_serialize_music_arrangement,
);

sub _serialize_music_arrangement { $_[0]->_serializer('music_arrangement') }


=head2 C<music_composition_form>

C<musicCompositionForm>

The type of composition (e.g. overture, sonata, symphony, etc.).


A music_composition_form should be one of the following types:

=over

=item C<Str>

=back

=cut

has music_composition_form => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'musicCompositionForm',
    json_ld_serializer => \&_serialize_music_composition_form,
);

sub _serialize_music_composition_form { $_[0]->_serializer('music_composition_form') }


=head2 C<musical_key>

C<musicalKey>

The key, mode, or scale this composition uses.


A musical_key should be one of the following types:

=over

=item C<Str>

=back

=cut

has musical_key => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'musicalKey',
    json_ld_serializer => \&_serialize_musical_key,
);

sub _serialize_musical_key { $_[0]->_serializer('musical_key') }


=head2 C<recorded_as>

C<recordedAs>

An audio recording of the work.


A recorded_as should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MusicRecording']>

=back

=cut

has recorded_as => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'recordedAs',
    json_ld_serializer => \&_serialize_recorded_as,
);

sub _serialize_recorded_as { $_[0]->_serializer('recorded_as') }




=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWork>

=cut

1;
