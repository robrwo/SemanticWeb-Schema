use utf8;

package SemanticWeb::Schema::EditedOrCroppedContent;

# ABSTRACT: Content coded 'edited or cropped content' in a [[MediaReview]]

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'EditedOrCroppedContent';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Content coded 'edited or cropped content' in a L<SemanticWeb::Schema::MediaReview>, considered in the context of how it was published or shared.

For a L<SemanticWeb::Schema::VideoObject> to be 'edited or cropped content': The video has been edited or rearranged. This category applies to time edits, including editing multiple videos together to alter the story being told or editing out large portions from a video.

For an L<SemanticWeb::Schema::ImageObject> to be 'edited or cropped content': Presenting a part of an image from a larger whole to mislead the viewer.

For an L<SemanticWeb::Schema::ImageObject> with embedded text to be 'edited or cropped content': Presenting a part of an image from a larger whole to mislead the viewer.

For an L<SemanticWeb::Schema::AudioObject> to be 'edited or cropped content': The audio has been edited or rearranged. This category applies to time edits, including editing multiple audio clips together to alter the story being told or editing out large portions from the recording.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
