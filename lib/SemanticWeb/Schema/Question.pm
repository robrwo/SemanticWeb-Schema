use utf8;

package SemanticWeb::Schema::Question;

# ABSTRACT: A specific question - e

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::Comment /;


use MooX::JSON_LD 'Question';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.0';

=encoding utf8

=head1 DESCRIPTION

A specific question - e.g. from a user seeking answers online, or collected
in a Frequently Asked Questions (FAQ) document.




=head1 ATTRIBUTES


=head2 C<accepted_answer>

C<acceptedAnswer>

The answer(s) that has been accepted as best, typically on a
Question/Answer site. Sites vary in their selection mechanisms, e.g.
drawing on community opinion and/or the view of the Question author.


A accepted_answer should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Answer']>

=item C<InstanceOf['SemanticWeb::Schema::ItemList']>

=back

=head2 C<_has_accepted_answer>

A predicate for the L</accepted_answer> attribute.

=cut

has accepted_answer => (
    is        => 'rw',
    predicate => '_has_accepted_answer',
    json_ld   => 'acceptedAnswer',
);


=head2 C<answer_count>

C<answerCount>

The number of answers this question has received.


A answer_count should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Integer']>

=back

=head2 C<_has_answer_count>

A predicate for the L</answer_count> attribute.

=cut

has answer_count => (
    is        => 'rw',
    predicate => '_has_answer_count',
    json_ld   => 'answerCount',
);


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


=head2 C<suggested_answer>

C<suggestedAnswer>

An answer (possibly one of several, possibly incorrect) to a Question, e.g.
on a Question/Answer site.


A suggested_answer should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Answer']>

=item C<InstanceOf['SemanticWeb::Schema::ItemList']>

=back

=head2 C<_has_suggested_answer>

A predicate for the L</suggested_answer> attribute.

=cut

has suggested_answer => (
    is        => 'rw',
    predicate => '_has_suggested_answer',
    json_ld   => 'suggestedAnswer',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Comment>

=cut

1;
