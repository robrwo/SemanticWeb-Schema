package LDF::Schema::MusicComposition;

# ABSTRACT: A musical composition.

use Moo;

extends qw/ LDF::Schema::CreativeWork /;


use curry;
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

=item C<InstanceOf['LDF::Schema::Person']>

=item C<InstanceOf['LDF::Schema::Organization']>

=back

=cut

has composer => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<first_performance>

C<firstPerformance>

The date and place the work was first performed.


A first_performance should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Event']>

=back

=cut

has first_performance => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<included_composition>

C<includedComposition>

Smaller compositions included in this work (e.g. a movement in a symphony).


A included_composition should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::MusicComposition']>

=back

=cut

has included_composition => (
    is        => 'rw',
    predicate => 1,
);


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
);


=head2 C<lyricist>



The person who wrote the words.


A lyricist should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Person']>

=back

=cut

has lyricist => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<lyrics>



The words in the song.


A lyrics should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::CreativeWork']>

=back

=cut

has lyrics => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<music_arrangement>

C<musicArrangement>

An arrangement derived from the composition.


A music_arrangement should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::MusicComposition']>

=back

=cut

has music_arrangement => (
    is        => 'rw',
    predicate => 1,
);


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
);


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
);


=head2 C<recorded_as>

C<recordedAs>

An audio recording of the work.


A recorded_as should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::MusicRecording']>

=back

=cut

has recorded_as => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'MusicComposition' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields, {
       'composer' => $self->curry::_serializer('composer'),
       'firstPerformance' => $self->curry::_serializer('first_performance'),
       'includedComposition' => $self->curry::_serializer('included_composition'),
       'iswcCode' => $self->curry::_serializer('iswc_code'),
       'lyricist' => $self->curry::_serializer('lyricist'),
       'lyrics' => $self->curry::_serializer('lyrics'),
       'musicArrangement' => $self->curry::_serializer('music_arrangement'),
       'musicCompositionForm' => $self->curry::_serializer('music_composition_form'),
       'musicalKey' => $self->curry::_serializer('musical_key'),
       'recordedAs' => $self->curry::_serializer('recorded_as'),
    } ]
};




=head1 SEE ALSO



L<LDF::Schema::CreativeWork>

=cut

1;
