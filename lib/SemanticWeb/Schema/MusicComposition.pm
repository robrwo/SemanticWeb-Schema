use utf8;

package SemanticWeb::Schema::MusicComposition;

# ABSTRACT: A musical composition.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork /;


use MooX::JSON_LD 'MusicComposition';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.2';

=encoding utf8

=head1 DESCRIPTION

A musical composition.




=head1 ATTRIBUTES


=head2 C<composer>



The person or organization who wrote a composition, or who is the composer
of a work performed at some event.


A composer should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=head2 C<_has_composer>

A predicate for the L</composer> attribute.

=cut

has composer => (
    is        => 'rw',
    predicate => '_has_composer',
    json_ld   => 'composer',
);


=head2 C<first_performance>

C<firstPerformance>

The date and place the work was first performed.


A first_performance should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Event']>

=back

=head2 C<_has_first_performance>

A predicate for the L</first_performance> attribute.

=cut

has first_performance => (
    is        => 'rw',
    predicate => '_has_first_performance',
    json_ld   => 'firstPerformance',
);


=head2 C<included_composition>

C<includedComposition>

Smaller compositions included in this work (e.g. a movement in a symphony).


A included_composition should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MusicComposition']>

=back

=head2 C<_has_included_composition>

A predicate for the L</included_composition> attribute.

=cut

has included_composition => (
    is        => 'rw',
    predicate => '_has_included_composition',
    json_ld   => 'includedComposition',
);


=head2 C<iswc_code>

C<iswcCode>

The International Standard Musical Work Code for the composition.


A iswc_code should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_iswc_code>

A predicate for the L</iswc_code> attribute.

=cut

has iswc_code => (
    is        => 'rw',
    predicate => '_has_iswc_code',
    json_ld   => 'iswcCode',
);


=head2 C<lyricist>



The person who wrote the words.


A lyricist should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=head2 C<_has_lyricist>

A predicate for the L</lyricist> attribute.

=cut

has lyricist => (
    is        => 'rw',
    predicate => '_has_lyricist',
    json_ld   => 'lyricist',
);


=head2 C<lyrics>



The words in the song.


A lyrics should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::CreativeWork']>

=back

=head2 C<_has_lyrics>

A predicate for the L</lyrics> attribute.

=cut

has lyrics => (
    is        => 'rw',
    predicate => '_has_lyrics',
    json_ld   => 'lyrics',
);


=head2 C<music_arrangement>

C<musicArrangement>

An arrangement derived from the composition.


A music_arrangement should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MusicComposition']>

=back

=head2 C<_has_music_arrangement>

A predicate for the L</music_arrangement> attribute.

=cut

has music_arrangement => (
    is        => 'rw',
    predicate => '_has_music_arrangement',
    json_ld   => 'musicArrangement',
);


=head2 C<music_composition_form>

C<musicCompositionForm>

The type of composition (e.g. overture, sonata, symphony, etc.).


A music_composition_form should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_music_composition_form>

A predicate for the L</music_composition_form> attribute.

=cut

has music_composition_form => (
    is        => 'rw',
    predicate => '_has_music_composition_form',
    json_ld   => 'musicCompositionForm',
);


=head2 C<musical_key>

C<musicalKey>

The key, mode, or scale this composition uses.


A musical_key should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_musical_key>

A predicate for the L</musical_key> attribute.

=cut

has musical_key => (
    is        => 'rw',
    predicate => '_has_musical_key',
    json_ld   => 'musicalKey',
);


=head2 C<recorded_as>

C<recordedAs>

An audio recording of the work.


A recorded_as should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MusicRecording']>

=back

=head2 C<_has_recorded_as>

A predicate for the L</recorded_as> attribute.

=cut

has recorded_as => (
    is        => 'rw',
    predicate => '_has_recorded_as',
    json_ld   => 'recordedAs',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWork>

=cut

1;
