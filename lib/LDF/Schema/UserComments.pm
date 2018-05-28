package LDF::Schema::UserComments;

# ABSTRACT: UserInteraction and its subtypes is an old way of talking about users interacting with pages

use Moo;

extends qw/ LDF::Schema::UserInteraction /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

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
);


=head2 C<creator>



The creator/author of this CreativeWork. This is the same as the Author
property for CreativeWork.


A creator should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Person']>

=item C<InstanceOf['LDF::Schema::Organization']>

=back

=cut

has creator => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<discusses>



Specifies the CreativeWork associated with the UserComment.


A discusses should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::CreativeWork']>

=back

=cut

has discusses => (
    is        => 'rw',
    predicate => 1,
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
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'UserComments' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields, {
       'commentText' => $self->curry::_serializer('comment_text'),
       'commentTime' => $self->curry::_serializer('comment_time'),
       'creator' => $self->curry::_serializer('creator'),
       'discusses' => $self->curry::_serializer('discusses'),
       'replyToUrl' => $self->curry::_serializer('reply_to_url'),
    } ]
};




=head1 SEE ALSO



L<LDF::Schema::UserInteraction>

=cut

1;
