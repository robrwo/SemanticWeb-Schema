package LDF::Schema::InteractionCounter;

# ABSTRACT: A summary of how users have interacted with this CreativeWork

use Moo;

extends qw/ LDF::Schema::StructuredValue /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A summary of how users have interacted with this CreativeWork. In most
cases, authors will use a subtype to specify the specific type of
interaction.



Note that this class was generated automatically from the following sources:

=over

=item L<http://schema.org/version/3.3/schema.rdf>

=back


=head1 ATTRIBUTES


=head2 C<interaction_service>

C<interactionService>

The WebSite or SoftwareApplication where the interactions took place.


A interaction_service should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::SoftwareApplication']>

=item C<InstanceOf['LDF::Schema::WebSite']>

=back

=cut

has interaction_service => (
    is        => 'rw',
    predicate => 1,
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

=item C<InstanceOf['LDF::Schema::Action']>

=back

=cut

has interaction_type => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<user_interaction_count>

C<userInteractionCount>

The number of interactions for the CreativeWork using the WebSite or
SoftwareApplication.


A user_interaction_count should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Integer']>

=back

=cut

has user_interaction_count => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'InteractionCounter' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields,
      { interactionService => 'interaction_service' },
      { interactionType => 'interaction_type' },
      { userInteractionCount => 'user_interaction_count' },
    ]
};




=head1 SEE ALSO



L<LDF::Schema::StructuredValue>

=cut

1;
