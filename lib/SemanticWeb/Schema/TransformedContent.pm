use utf8;

package SemanticWeb::Schema::TransformedContent;

# ABSTRACT: Content coded 'transformed content' in a [[MediaReview]]

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'TransformedContent';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Content coded 'transformed content' in a L<SemanticWeb::Schema::MediaReview>, considered in the context of how it was published or shared.

For a L<SemanticWeb::Schema::VideoObject> to be 'transformed content':  or all of the video has been manipulated to transform the footage itself. This category includes using tools like the Adobe Suite to change the speed of the video, add or remove visual elements or dub audio. Deepfakes are also a subset of transformation.

For an L<SemanticWeb::Schema::ImageObject> to be 'transformed content': Adding or deleting visual elements to give the image a different meaning with the intention to mislead.

For an L<SemanticWeb::Schema::ImageObject> with embedded text to be 'transformed content': Adding or deleting visual elements to give the image a different meaning with the intention to mislead.

For an L<SemanticWeb::Schema::AudioObject> to be 'transformed content': Part or all of the audio has been manipulated to alter the words or sounds, or the audio has been synthetically generated, such as to create a sound-alike voice.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
