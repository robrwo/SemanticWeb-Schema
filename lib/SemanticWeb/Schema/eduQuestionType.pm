use utf8;

package SemanticWeb::Schema::eduQuestionType;

# ABSTRACT: For questions that are part of learning resources (e

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'eduQuestionType';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

For questions that are part of learning resources (e.g. Quiz),
eduQuestionType indicates the format of question being given. Example:
"Multiple choice", "Open ended", "Flashcard".




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
