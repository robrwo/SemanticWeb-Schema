use utf8;

package SemanticWeb::Schema::Comment;

# ABSTRACT: A comment on an item - for example

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork /;


use MooX::JSON_LD 'Comment';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v23.0.0';

=encoding utf8

=head1 DESCRIPTION

A comment on an item - for example, a comment on a blog post. The comment's content is expressed via the [[text]] property, and its topic via [[about]], properties shared with all CreativeWorks.



=head1 ATTRIBUTES


=head2 C<downvote_count>

C<downvoteCount>

The number of downvotes this question, answer or comment has received from
the community.


A downvote_count should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Integer']>

=back

=head2 C<_has_downvote_count>

A predicate for the L</downvote_count> attribute.

=cut

has downvote_count => (
    is        => 'rw',
    predicate => '_has_downvote_count',
    json_ld   => 'downvoteCount',
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


=head2 C<shared_content>

C<sharedContent>

A CreativeWork such as an image, video, or audio clip shared as part of
this posting.


A shared_content should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::CreativeWork']>

=back

=head2 C<_has_shared_content>

A predicate for the L</shared_content> attribute.

=cut

has shared_content => (
    is        => 'rw',
    predicate => '_has_shared_content',
    json_ld   => 'sharedContent',
);


=head2 C<upvote_count>

C<upvoteCount>

The number of upvotes this question, answer or comment has received from
the community.


A upvote_count should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Integer']>

=back

=head2 C<_has_upvote_count>

A predicate for the L</upvote_count> attribute.

=cut

has upvote_count => (
    is        => 'rw',
    predicate => '_has_upvote_count',
    json_ld   => 'upvoteCount',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWork>

=cut

1;
