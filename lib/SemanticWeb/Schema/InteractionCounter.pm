use utf8;

package SemanticWeb::Schema::InteractionCounter;

# ABSTRACT: A summary of how users have interacted with this CreativeWork

use Moo;

extends qw/ SemanticWeb::Schema::StructuredValue /;


use MooX::JSON_LD 'InteractionCounter';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v11.0.1';

=encoding utf8

=head1 DESCRIPTION

A summary of how users have interacted with this CreativeWork. In most
cases, authors will use a subtype to specify the specific type of
interaction.




=head1 ATTRIBUTES


=head2 C<interaction_service>

C<interactionService>

The WebSite or SoftwareApplication where the interactions took place.


A interaction_service should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::SoftwareApplication']>

=item C<InstanceOf['SemanticWeb::Schema::WebSite']>

=back

=head2 C<_has_interaction_service>

A predicate for the L</interaction_service> attribute.

=cut

has interaction_service => (
    is        => 'rw',
    predicate => '_has_interaction_service',
    json_ld   => 'interactionService',
);


=head2 C<interaction_type>

C<interactionType>

The Action representing the type of interaction. For up votes, +1s, etc.
use [[LikeAction]]. For down votes use [[DislikeAction]]. Otherwise, use
the most specific Action.


A interaction_type should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Action']>

=back

=head2 C<_has_interaction_type>

A predicate for the L</interaction_type> attribute.

=cut

has interaction_type => (
    is        => 'rw',
    predicate => '_has_interaction_type',
    json_ld   => 'interactionType',
);


=head2 C<user_interaction_count>

C<userInteractionCount>

The number of interactions for the CreativeWork using the WebSite or
SoftwareApplication.


A user_interaction_count should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Integer']>

=back

=head2 C<_has_user_interaction_count>

A predicate for the L</user_interaction_count> attribute.

=cut

has user_interaction_count => (
    is        => 'rw',
    predicate => '_has_user_interaction_count',
    json_ld   => 'userInteractionCount',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::StructuredValue>

=cut

1;
