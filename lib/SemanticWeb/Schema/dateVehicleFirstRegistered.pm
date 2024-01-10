use utf8;

package SemanticWeb::Schema::dateVehicleFirstRegistered;

# ABSTRACT: The date of the first registration of the vehicle with the respective public authorities.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'dateVehicleFirstRegistered';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The date of the first registration of the vehicle with the respective
public authorities.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
