package SemanticWeb::Schema::ScreeningEvent;

# ABSTRACT: A screening of a movie or other video.

use Moo;

extends qw/ SemanticWeb::Schema::Event /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A screening of a movie or other video.




=head1 ATTRIBUTES


=head2 C<subtitle_language>

C<subtitleLanguage>

=begin html

Languages in which subtitles/captions are available, in <a
href="http://tools.ietf.org/html/bcp47">IETF BCP 47 standard format</a>.

=end html


A subtitle_language should be one of the following types:

=over

=item C<Str>

=item C<InstanceOf['SemanticWeb::Schema::Language']>

=back

=cut

has subtitle_language => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'subtitleLanguage',
    json_ld_serializer => \&_serialize_subtitle_language,
);

sub _serialize_subtitle_language { $_[0]->_serializer('subtitle_language') }


=head2 C<video_format>

C<videoFormat>

The type of screening or video broadcast used (e.g. IMAX, 3D, SD, HD,
etc.).


A video_format should be one of the following types:

=over

=item C<Str>

=back

=cut

has video_format => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'videoFormat',
    json_ld_serializer => \&_serialize_video_format,
);

sub _serialize_video_format { $_[0]->_serializer('video_format') }


=head2 C<work_presented>

C<workPresented>

The movie presented during this event.


A work_presented should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Movie']>

=back

=cut

has work_presented => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'workPresented',
    json_ld_serializer => \&_serialize_work_presented,
);

sub _serialize_work_presented { $_[0]->_serializer('work_presented') }




around json_ld_type => sub { return 'ScreeningEvent' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
       'subtitleLanguage' => \&_serialize_subtitle_language,
       'videoFormat' => \&_serialize_video_format,
       'workPresented' => \&_serialize_work_presented,
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::Event>

=cut

1;
