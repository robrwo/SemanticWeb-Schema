package LDF::Schema::Question;

# ABSTRACT: A specific question - e

use Moo;

extends qw/ LDF::Schema::CreativeWork /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A specific question - e.g. from a user seeking answers online, or collected
in a Frequently Asked Questions (FAQ) document.



Note that this class was generated automatically from the following sources:

=over

=item L<http://schema.org/version/3.3/schema.rdf>

=back


=head1 ATTRIBUTES


=head2 C<accepted_answer>

C<acceptedAnswer>

The answer that has been accepted as best, typically on a Question/Answer
site. Sites vary in their selection mechanisms, e.g. drawing on community
opinion and/or the view of the Question author.


A accepted_answer should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Answer']>

=back

=cut

has accepted_answer => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<answer_count>

C<answerCount>

The number of answers this question has received.


A answer_count should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Integer']>

=back

=cut

has answer_count => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<downvote_count>

C<downvoteCount>

The number of downvotes this question, answer or comment has received from
the community.


A downvote_count should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Integer']>

=back

=cut

has downvote_count => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<suggested_answer>

C<suggestedAnswer>

An answer (possibly one of several, possibly incorrect) to a Question, e.g.
on a Question/Answer site.


A suggested_answer should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Answer']>

=back

=cut

has suggested_answer => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<upvote_count>

C<upvoteCount>

The number of upvotes this question, answer or comment has received from
the community.


A upvote_count should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Integer']>

=back

=cut

has upvote_count => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'Question' }

=ead2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields,
      { acceptedAnswer => 'accepted_answer' },
      { answerCount => 'answer_count' },
      { downvoteCount => 'downvote_count' },
      { suggestedAnswer => 'suggested_answer' },
      { upvoteCount => 'upvote_count' },
    ]
};



=head1 SEE ALSO



L<LDF::Schema::CreativeWork>

=cut

1;
