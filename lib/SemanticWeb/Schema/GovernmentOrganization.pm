package SemanticWeb::Schema::GovernmentOrganization;

# ABSTRACT: A governmental organization or agency.

use Moo;

extends qw/ SemanticWeb::Schema::Organization /;


use MooX::JSON_LD 'GovernmentOrganization';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.2';

=head1 DESCRIPTION

A governmental organization or agency.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Organization>

=cut

1;