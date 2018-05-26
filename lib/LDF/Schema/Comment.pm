package LDF::Schema::Comment;

# ABSTRACT: A comment on an item - for example

use Moo;

extends qw/ LDF::Schema::CreativeWork /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

=begin html

A comment on an item - for example, a comment on a blog post. The comment's
content is expressed via the <a class="localLink"
href="http://schema.org/text">text</a> property, and its topic via <a
class="localLink" href="http://schema.org/about">about</a>, properties
shared with all CreativeWorks.

=end html




=head1 ATTRIBUTES


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


=head2 C<parent_item>

C<parentItem>

The parent of a question, answer or item in general.


A parent_item should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Question']>

=back

=cut

has parent_item => (
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

sub json_ld_type { 'Comment' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields,
      { downvoteCount => 'downvote_count' },
      { parentItem => 'parent_item' },
      { upvoteCount => 'upvote_count' },
    ]
};




=head1 SEE ALSO



L<LDF::Schema::CreativeWork>

=cut

1;
