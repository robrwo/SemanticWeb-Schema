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

our $VERSION = 'v22.0.0';

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

The parent of a question, answer or item in general.


A parent_item should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Comment']>

=back

=head2 C<_has_parent_item>

A predicate for the L</parent_item> attribute.

=cut

has parent_item => (
    is        => 'rw',
    predicate => '_has_parent_item',
    json_ld   => 'parentItem',
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
