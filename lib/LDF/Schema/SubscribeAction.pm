package LDF::Schema::SubscribeAction;

# ABSTRACT: <p>The act of forming a personal connection with someone/something (object) unidirectionally/asymmetrically to get updates pushed to

use Moo;

extends qw/ LDF::Schema::InteractAction /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

=begin html

<p>The act of forming a personal connection with someone/something (object)
unidirectionally/asymmetrically to get updates pushed to.</p> <p>Related
actions:</p> <ul> <li><a class="localLink"
href="http://schema.org/FollowAction">FollowAction</a>: Unlike
FollowAction, SubscribeAction implies that the subscriber acts as a passive
agent being constantly/actively pushed for updates.</li> <li><a
class="localLink"
href="http://schema.org/RegisterAction">RegisterAction</a>: Unlike
RegisterAction, SubscribeAction implies that the agent is interested in
continuing receiving updates from the object.</li> <li><a class="localLink"
href="http://schema.org/JoinAction">JoinAction</a>: Unlike JoinAction,
SubscribeAction implies that the agent is interested in continuing
receiving updates from the object.</li> </ul> 

=end html



Note that this class was generated automatically from the following sources:

=over

=item L<http://schema.org/version/3.3/ext-meta.rdf>

=item L<http://schema.org/version/3.3/schema.rdf>

=back


=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'SubscribeAction' }



=head1 SEE ALSO



L<LDF::Schema::InteractAction>

=cut

1;
