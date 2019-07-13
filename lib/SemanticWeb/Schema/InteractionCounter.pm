use utf8;

package SemanticWeb::Schema::InteractionCounter;

# ABSTRACT: A summary of how users have interacted with this CreativeWork

use Moo;

extends qw/ SemanticWeb::Schema::StructuredValue /;


use MooX::JSON_LD 'InteractionCounter';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.7.0';

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

=item C<InstanceOf['SemanticWeb::Schema::WebSite']>

=item C<InstanceOf['SemanticWeb::Schema::SoftwareApplication']>

=back

=cut

has interaction_service => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'interactionService',
);


=head2 C<interaction_type>

C<interactionType>

=begin html

The Action representing the type of interaction. For up votes, +1s, etc.
use <a class="localLink"
href="http://schema.org/LikeAction">LikeAction</a>. For down votes use <a
class="localLink" href="http://schema.org/DislikeAction">DislikeAction</a>.
Otherwise, use the most specific Action.

=end html


A interaction_type should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Action']>

=back

=cut

has interaction_type => (
    is        => 'rw',
    predicate => 1,
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

=cut

has user_interaction_count => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'userInteractionCount',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::StructuredValue>

=cut

1;
