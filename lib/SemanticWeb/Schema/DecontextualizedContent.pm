use utf8;

package SemanticWeb::Schema::DecontextualizedContent;

# ABSTRACT: Content coded 'missing context' in a [[MediaReview]]

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'DecontextualizedContent';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Content coded 'missing context' in a L<SemanticWeb::Schema::MediaReview>, considered in the context of how it was published or shared.

For a L<SemanticWeb::Schema::VideoObject> to be 'missing context': Presenting unaltered video in an inaccurate manner that misrepresents the footage. For example, using incorrect dates or locations, altering the transcript or sharing brief clips from a longer video to mislead viewers. (A video rated 'original' can also be missing context.)

For an L<SemanticWeb::Schema::ImageObject> to be 'missing context': Presenting unaltered images in an inaccurate manner to misrepresent the image and mislead the viewer. For example, a common tactic is using an unaltered image but saying it came from a different time or place. (An image rated 'original' can also be missing context.)

For an L<SemanticWeb::Schema::ImageObject> with embedded text to be 'missing context': An unaltered image presented in an inaccurate manner to misrepresent the image and mislead the viewer. For example, a common tactic is using an unaltered image but saying it came from a different time or place. (An 'original' image with inaccurate text would generally fall in this category.)

For an L<SemanticWeb::Schema::AudioObject> to be 'missing context': Unaltered audio presented in an inaccurate manner that misrepresents it. For example, using incorrect dates or locations, or sharing brief clips from a longer recording to mislead viewers. (Audio rated âoriginalâ can also be missing context.)



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
