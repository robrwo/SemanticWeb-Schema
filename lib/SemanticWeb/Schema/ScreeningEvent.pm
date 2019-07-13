use utf8;

package SemanticWeb::Schema::ScreeningEvent;

# ABSTRACT: A screening of a movie or other video.

use Moo;

extends qw/ SemanticWeb::Schema::Event /;


use MooX::JSON_LD 'ScreeningEvent';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.7.1';

=encoding utf8

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
);


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
);


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
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Event>

=cut

1;
