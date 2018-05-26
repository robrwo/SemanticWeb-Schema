package LDF::Schema::CheckOutAction;

# ABSTRACT: <p>The act of an agent communicating (service provider

use Moo;

extends qw/ LDF::Schema::CommunicateAction /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

=begin html

<p>The act of an agent communicating (service provider, social media, etc)
their departure of a previously reserved service (e.g. flight check in) or
place (e.g. hotel).</p> <p>Related actions:</p> <ul> <li><a
class="localLink" href="http://schema.org/CheckInAction">CheckInAction</a>:
The antonym of CheckOutAction.</li> <li><a class="localLink"
href="http://schema.org/DepartAction">DepartAction</a>: Unlike
DepartAction, CheckOutAction implies that the agent is informing/confirming
the end of a previously reserved service.</li> <li><a class="localLink"
href="http://schema.org/CancelAction">CancelAction</a>: Unlike
CancelAction, CheckOutAction implies that the agent is informing/confirming
the end of a previously reserved service.</li> </ul> 

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

sub json_ld_type { 'CheckOutAction' }



=head1 SEE ALSO



L<LDF::Schema::CommunicateAction>

=cut

1;
