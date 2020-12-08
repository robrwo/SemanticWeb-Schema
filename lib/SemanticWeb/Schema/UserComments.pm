use utf8;

package SemanticWeb::Schema::UserComments;

# ABSTRACT: UserInteraction and its subtypes is an old way of talking about users interacting with pages

use Moo;

extends qw/ SemanticWeb::Schema::UserInteraction /;


use MooX::JSON_LD 'UserComments';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v11.1.1';

=encoding utf8

=head1 DESCRIPTION

UserInteraction and its subtypes is an old way of talking about users interacting with pages. It is generally better to use L<SemanticWeb::Schema::Action>-based vocabulary, alongside types such as L<SemanticWeb::Schema::Comment>.



=head1 ATTRIBUTES


=head2 C<comment_text>

C<commentText>

The text of the UserComment.


A comment_text should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_comment_text>

A predicate for the L</comment_text> attribute.

=cut

has comment_text => (
    is        => 'rw',
    predicate => '_has_comment_text',
    json_ld   => 'commentText',
);


=head2 C<comment_time>

C<commentTime>

The time at which the UserComment was made.


A comment_time should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_comment_time>

A predicate for the L</comment_time> attribute.

=cut

has comment_time => (
    is        => 'rw',
    predicate => '_has_comment_time',
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

=head2 C<_has_creator>

A predicate for the L</creator> attribute.

=cut

has creator => (
    is        => 'rw',
    predicate => '_has_creator',
    json_ld   => 'creator',
);


=head2 C<discusses>



Specifies the CreativeWork associated with the UserComment.


A discusses should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::CreativeWork']>

=back

=head2 C<_has_discusses>

A predicate for the L</discusses> attribute.

=cut

has discusses => (
    is        => 'rw',
    predicate => '_has_discusses',
    json_ld   => 'discusses',
);


=head2 C<reply_to_url>

C<replyToUrl>

The URL at which a reply may be posted to the specified UserComment.


A reply_to_url should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_reply_to_url>

A predicate for the L</reply_to_url> attribute.

=cut

has reply_to_url => (
    is        => 'rw',
    predicate => '_has_reply_to_url',
    json_ld   => 'replyToUrl',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::UserInteraction>

=cut

1;
