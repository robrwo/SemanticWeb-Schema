use utf8;

package SemanticWeb::Schema::ApplyAction;

# ABSTRACT: The act of registering to an organization/service without the guarantee to receive it

use Moo;

extends qw/ SemanticWeb::Schema::OrganizeAction /;


use MooX::JSON_LD 'ApplyAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v10.0.1';

=encoding utf8

=head1 DESCRIPTION

=begin html

<p>The act of registering to an organization/service without the guarantee
to receive it.<br/><br/> Related actions:<br/><br/> <ul> <li><a
class="localLink"
href="http://schema.org/RegisterAction">RegisterAction</a>: Unlike
RegisterAction, ApplyAction has no guarantees that the application will be
accepted.</li> </ul> <p>

=end html




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::OrganizeAction>

=cut

1;
