use utf8;

package SemanticWeb::Schema::UserComments;

# ABSTRACT: UserInteraction and its subtypes is an old way of talking about users interacting with pages

use Moo;

extends qw/ SemanticWeb::Schema::UserInteraction /;


use MooX::JSON_LD 'UserComments';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.8.1';

=encoding utf8

=head1 DESCRIPTION

=begin html

UserInteraction and its subtypes is an old way of talking about users
interacting with pages. It is generally better to use <a class="localLink"
href="http://schema.org/Action">Action</a>-based vocabulary, alongside
types such as <a class="localLink"
href="http://schema.org/Comment">Comment</a>.

=end html




=head1 ATTRIBUTES


=head2 C<comment_text>

C<commentText>

The text of the UserComment.


A comment_text should be one of the following types:

=over

=item C<Str>

=back

=cut

has comment_text => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'commentText',
);


=head2 C<comment_time>

C<commentTime>

The time at which the UserComment was made.


A comment_time should be one of the following types:

=over

=item C<Str>

=back

=cut

has comment_time => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'commentTime',
);


=head2 C<creator>



The creator/author of this CreativeWork. This is the same as the Author
property for CreativeWork.


A creator should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=cut

has creator => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'creator',
);


=head2 C<discusses>



Specifies the CreativeWork associated with the UserComment.


A discusses should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::CreativeWork']>

=back

=cut

has discusses => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'discusses',
);


=head2 C<reply_to_url>

C<replyToUrl>

The URL at which a reply may be posted to the specified UserComment.


A reply_to_url should be one of the following types:

=over

=item C<Str>

=back

=cut

has reply_to_url => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'replyToUrl',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::UserInteraction>

=cut

1;
