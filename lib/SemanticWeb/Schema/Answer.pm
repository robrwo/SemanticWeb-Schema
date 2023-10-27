use utf8;

package SemanticWeb::Schema::Answer;

# ABSTRACT: An answer offered to a question; perhaps correct

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::Comment /;


use MooX::JSON_LD 'Answer';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v23.0.1';

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


=head2 C<parent_item>

C<parentItem>

The parent of a question, answer or item in general. Typically used for Q/A discussion threads e.g. a chain of comments with the first comment being an L<SemanticWeb::Schema::Article> or other L<SemanticWeb::Schema::CreativeWork>. See also [[comment]] which points from something to a comment about it.

A parent_item should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Comment']>

=item C<InstanceOf['SemanticWeb::Schema::CreativeWork']>

=back

=head2 C<_has_parent_item>

A predicate for the L</parent_item> attribute.

=cut

has parent_item => (
    is        => 'rw',
    predicate => '_has_parent_item',
    json_ld   => 'parentItem',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Comment>

=cut

1;
