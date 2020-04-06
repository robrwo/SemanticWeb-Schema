use utf8;

package SemanticWeb::Schema::AudioObject;

# ABSTRACT: An audio file.

use Moo;

extends qw/ SemanticWeb::Schema::MediaObject /;


use MooX::JSON_LD 'AudioObject';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v7.0.4';

=encoding utf8

=head1 DESCRIPTION

An audio file.




=head1 ATTRIBUTES


=head2 C<caption>



=begin html

<p>The caption for this object. For downloadable machine formats (closed
caption, subtitles etc.) use MediaObject and indicate the <a
class="localLink"
href="http://schema.org/encodingFormat">encodingFormat</a>.<p>

=end html


A caption should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MediaObject']>

=item C<Str>

=back

=head2 C<_has_caption>

A predicate for the L</caption> attribute.

=cut

has caption => (
    is        => 'rw',
    predicate => '_has_caption',
    json_ld   => 'caption',
);


=head2 C<transcript>



If this MediaObject is an AudioObject or VideoObject, the transcript of
that object.


A transcript should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_transcript>

A predicate for the L</transcript> attribute.

=cut

has transcript => (
    is        => 'rw',
    predicate => '_has_transcript',
    json_ld   => 'transcript',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::MediaObject>

=cut

1;
