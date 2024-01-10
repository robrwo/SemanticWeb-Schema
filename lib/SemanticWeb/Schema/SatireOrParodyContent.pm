use utf8;

package SemanticWeb::Schema::SatireOrParodyContent;

# ABSTRACT: Content coded 'satire or parody content' in a [[MediaReview]]

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'SatireOrParodyContent';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Content coded 'satire or parody content' in a L<SemanticWeb::Schema::MediaReview>, considered in the context of how it was published or shared.

For a L<SemanticWeb::Schema::VideoObject> to be 'satire or parody content': A video that was created as political or humorous commentary and is presented in that context. (Reshares of satire/parody content that do not include relevant context are more likely to fall under the âmissing contextâ rating.)

For an L<SemanticWeb::Schema::ImageObject> to be 'satire or parody content': An image that was created as political or humorous commentary and is presented in that context. (Reshares of satire/parody content that do not include relevant context are more likely to fall under the âmissing contextâ rating.)

For an L<SemanticWeb::Schema::ImageObject> with embedded text to be 'satire or parody content': An image that was created as political or humorous commentary and is presented in that context. (Reshares of satire/parody content that do not include relevant context are more likely to fall under the âmissing contextâ rating.)

For an L<SemanticWeb::Schema::AudioObject> to be 'satire or parody content': Audio that was created as political or humorous commentary and is presented in that context. (Reshares of satire/parody content that do not include relevant context are more likely to fall under the âmissing contextâ rating.)



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
