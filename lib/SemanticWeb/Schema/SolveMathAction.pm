use utf8;

package SemanticWeb::Schema::SolveMathAction;

# ABSTRACT: The action that takes in a math expression and directs users to a page potentially capable of solving/simplifying that expression.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::Action /;


use MooX::JSON_LD 'SolveMathAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.1';

=encoding utf8

=head1 DESCRIPTION

The action that takes in a math expression and directs users to a page
potentially capable of solving/simplifying that expression.




=head1 ATTRIBUTES


=head2 C<edu_question_type>

C<eduQuestionType>

For questions that are part of learning resources (e.g. Quiz),
eduQuestionType indicates the format of question being given. Example:
"Multiple choice", "Open ended", "Flashcard".


A edu_question_type should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_edu_question_type>

A predicate for the L</edu_question_type> attribute.

=cut

has edu_question_type => (
    is        => 'rw',
    predicate => '_has_edu_question_type',
    json_ld   => 'eduQuestionType',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Action>

=cut

1;
