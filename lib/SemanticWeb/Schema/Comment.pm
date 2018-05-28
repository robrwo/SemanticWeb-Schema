package SemanticWeb::Schema::Comment;

# ABSTRACT: A comment on an item - for example

use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork /;


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

=item C<InstanceOf['SemanticWeb::Schema::Integer']>

=back

=cut

has downvote_count => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'downvoteCount',
    json_ld_serializer => \&_serialize_downvote_count,
);

sub _serialize_downvote_count { $_[0]->_serializer('downvote_count') }


=head2 C<parent_item>

C<parentItem>

The parent of a question, answer or item in general.


A parent_item should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Question']>

=back

=cut

has parent_item => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'parentItem',
    json_ld_serializer => \&_serialize_parent_item,
);

sub _serialize_parent_item { $_[0]->_serializer('parent_item') }


=head2 C<upvote_count>

C<upvoteCount>

The number of upvotes this question, answer or comment has received from
the community.


A upvote_count should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Integer']>

=back

=cut

has upvote_count => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'upvoteCount',
    json_ld_serializer => \&_serialize_upvote_count,
);

sub _serialize_upvote_count { $_[0]->_serializer('upvote_count') }




around json_ld_type => sub { return 'Comment' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
       'downvoteCount' => \&_serialize_downvote_count,
       'parentItem' => \&_serialize_parent_item,
       'upvoteCount' => \&_serialize_upvote_count,
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWork>

=cut

1;
