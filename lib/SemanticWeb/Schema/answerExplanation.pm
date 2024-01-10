use utf8;

package SemanticWeb::Schema::answerExplanation;

# ABSTRACT: A step-by-step or full explanation about Answer

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'answerExplanation';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A step-by-step or full explanation about Answer. Can outline how this
Answer was achieved or contain more broad clarification or statement about
it. 




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
