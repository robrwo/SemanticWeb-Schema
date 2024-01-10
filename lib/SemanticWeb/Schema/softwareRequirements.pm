use utf8;

package SemanticWeb::Schema::softwareRequirements;

# ABSTRACT: Component dependency requirements for application

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'softwareRequirements';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Component dependency requirements for application. This includes runtime
environments and shared libraries that are not included in the application
distribution package, but required to run the application (examples:
DirectX, Java or .NET runtime).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
