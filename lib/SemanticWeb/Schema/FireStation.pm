use utf8;

package SemanticWeb::Schema::FireStation;

# ABSTRACT: A fire station. With firemen.

use Moo;

extends qw/ SemanticWeb::Schema::EmergencyService SemanticWeb::Schema::CivicStructure /;


use MooX::JSON_LD 'FireStation';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.7.0';

=encoding utf8

=head1 DESCRIPTION

A fire station. With firemen.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::CivicStructure>

=cut

1;
