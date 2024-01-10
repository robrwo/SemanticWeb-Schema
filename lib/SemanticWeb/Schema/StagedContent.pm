use utf8;

package SemanticWeb::Schema::StagedContent;

# ABSTRACT: Content coded 'staged content' in a [[MediaReview]]

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'StagedContent';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Content coded 'staged content' in a L<SemanticWeb::Schema::MediaReview>, considered in the context of how it was published or shared.

For a L<SemanticWeb::Schema::VideoObject> to be 'staged content': A video that has been created using actors or similarly contrived.

For an L<SemanticWeb::Schema::ImageObject> to be 'staged content': An image that was created using actors or similarly contrived, such as a screenshot of a fake tweet.

For an L<SemanticWeb::Schema::ImageObject> with embedded text to be 'staged content': An image that was created using actors or similarly contrived, such as a screenshot of a fake tweet.

For an L<SemanticWeb::Schema::AudioObject> to be 'staged content': Audio that has been created using actors or similarly contrived.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
