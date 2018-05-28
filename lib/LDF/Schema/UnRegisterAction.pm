package LDF::Schema::UnRegisterAction;

# ABSTRACT: <p>The act of un-registering from a service

use Moo;

extends qw/ LDF::Schema::InteractAction /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

=begin html

<p>The act of un-registering from a service.</p> <p>Related actions:</p>
<ul> <li><a class="localLink"
href="http://schema.org/RegisterAction">RegisterAction</a>: antonym of
UnRegisterAction.</li> <li><a class="localLink"
href="http://schema.org/Leave">Leave</a>: Unlike LeaveAction,
UnRegisterAction implies that you are unregistering from a service you
werer previously registered, rather than leaving a team/group of
people.</li> </ul> 

=end html




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'UnRegisterAction' }



=head1 SEE ALSO



L<LDF::Schema::InteractAction>

=cut

1;
