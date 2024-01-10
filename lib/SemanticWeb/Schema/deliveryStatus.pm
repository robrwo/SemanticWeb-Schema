use utf8;

package SemanticWeb::Schema::deliveryStatus;

# ABSTRACT: New entry added as the package passes through each leg of its journey (from shipment to final delivery).

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'deliveryStatus';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

New entry added as the package passes through each leg of its journey (from
shipment to final delivery).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
