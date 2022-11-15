use utf8;

package SemanticWeb::Schema::Answer;

# ABSTRACT: An answer offered to a question; perhaps correct

use Moo;

extends qw/ SemanticWeb::Schema::Comment /;


use MooX::JSON_LD 'Answer';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v15.0.1';

=encoding utf8

=head1 DESCRIPTION

An answer offered to a question; perhaps correct, perhaps opinionated or
wrong.




=head1 ATTRIBUTES


=head2 C<answer_explanation>

C<answerExplanation>

A step-by-step or full explanation about Answer. Can outline how this
Answer was achieved or contain more broad clarification or statement about
it. 


A answer_explanation should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Comment']>

=item C<InstanceOf['SemanticWeb::Schema::WebContent']>

=back

=head2 C<_has_answer_explanation>

A predicate for the L</answer_explanation> attribute.

=cut

has answer_explanation => (
    is        => 'rw',
    predicate => '_has_answer_explanation',
    json_ld   => 'answerExplanation',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Comment>

=cut

1;
