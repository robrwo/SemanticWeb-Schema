use utf8;

package SemanticWeb::Schema::ApplyAction;

# ABSTRACT: The act of registering to an organization/service without the guarantee to receive it

use Moo;

extends qw/ SemanticWeb::Schema::OrganizeAction /;


use MooX::JSON_LD 'ApplyAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v14.0.0';

=encoding utf8

=head1 DESCRIPTION

The act of registering to an organization/service without the guarantee to receive it.

Related actions:

=over

=item *

L<SemanticWeb::Schema::RegisterAction>: Unlike RegisterAction, ApplyAction has no guarantees that the application will be accepted.


=back



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::OrganizeAction>

=cut

1;
