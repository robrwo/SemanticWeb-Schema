use utf8;

package SemanticWeb::Schema::ScreeningEvent;

# ABSTRACT: A screening of a movie or other video.

use Moo;

extends qw/ SemanticWeb::Schema::Event /;


use MooX::JSON_LD 'ScreeningEvent';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.0';

=encoding utf8

=head1 DESCRIPTION

A screening of a movie or other video.




=head1 ATTRIBUTES


=head2 C<subtitle_language>

C<subtitleLanguage>

Languages in which subtitles/captions are available, in [IETF BCP 47
standard format](http://tools.ietf.org/html/bcp47).


A subtitle_language should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Language']>

=item C<Str>

=back

=head2 C<_has_subtitle_language>

A predicate for the L</subtitle_language> attribute.

=cut

has subtitle_language => (
    is        => 'rw',
    predicate => '_has_subtitle_language',
    json_ld   => 'subtitleLanguage',
);


=head2 C<video_format>

C<videoFormat>

The type of screening or video broadcast used (e.g. IMAX, 3D, SD, HD,
etc.).


A video_format should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_video_format>

A predicate for the L</video_format> attribute.

=cut

has video_format => (
    is        => 'rw',
    predicate => '_has_video_format',
    json_ld   => 'videoFormat',
);


=head2 C<work_presented>

C<workPresented>

The movie presented during this event.


A work_presented should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Movie']>

=back

=head2 C<_has_work_presented>

A predicate for the L</work_presented> attribute.

=cut

has work_presented => (
    is        => 'rw',
    predicate => '_has_work_presented',
    json_ld   => 'workPresented',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Event>

=cut

1;
