use utf8;

package SemanticWeb::Schema::OriginalMediaContent;

# ABSTRACT: Content coded 'as original media content' in a [[MediaReview]]

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'OriginalMediaContent';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Content coded 'as original media content' in a L<SemanticWeb::Schema::MediaReview>, considered in the context of how it was published or shared.

For a L<SemanticWeb::Schema::VideoObject> to be 'original': No evidence the footage has been misleadingly altered or manipulated, though it may contain false or misleading claims.

For an L<SemanticWeb::Schema::ImageObject> to be 'original': No evidence the image has been misleadingly altered or manipulated, though it may still contain false or misleading claims.

For an L<SemanticWeb::Schema::ImageObject> with embedded text to be 'original': No evidence the image has been misleadingly altered or manipulated, though it may still contain false or misleading claims.

For an L<SemanticWeb::Schema::AudioObject> to be 'original': No evidence the audio has been misleadingly altered or manipulated, though it may contain false or misleading claims.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
