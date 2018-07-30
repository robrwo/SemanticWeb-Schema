package SemanticWeb::Schema::ApplyAction;

# ABSTRACT: <p>The act of registering to an organization/service without the guarantee to receive it

use Moo;

extends qw/ SemanticWeb::Schema::OrganizeAction /;


use MooX::JSON_LD 'ApplyAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.2';

=head1 DESCRIPTION

=begin html

<p>The act of registering to an organization/service without the guarantee
to receive it.</p> <p>Related actions:</p> <ul> <li><a class="localLink"
href="http://schema.org/RegisterAction">RegisterAction</a>: Unlike
RegisterAction, ApplyAction has no guarantees that the application will be
accepted.</li> </ul> 

=end html




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::OrganizeAction>

=cut

1;
