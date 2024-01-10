use utf8;

package SemanticWeb::Schema::vehicleIdentificationNumber;

# ABSTRACT: The Vehicle Identification Number (VIN) is a unique serial number used by the automotive industry to identify individual motor vehicles.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'vehicleIdentificationNumber';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The Vehicle Identification Number (VIN) is a unique serial number used by
the automotive industry to identify individual motor vehicles.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
