use utf8;

package SemanticWeb::Schema::DeliveryMethod;

# ABSTRACT: A delivery method is a standardized procedure for transferring the product or service to the destination of fulfillment chosen by the customer

use Moo;

extends qw/ SemanticWeb::Schema::Enumeration /;


use MooX::JSON_LD 'DeliveryMethod';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v11.0.0';

=encoding utf8

=head1 DESCRIPTION

A delivery method is a standardized procedure for transferring the product
or service to the destination of fulfillment chosen by the customer.
Delivery methods are characterized by the means of transportation used, and
by the organization or group that is the contracting party for the sending
organization or person.\n\nCommonly used values:\n\n*
http://purl.org/goodrelations/v1#DeliveryModeDirectDownload\n*
http://purl.org/goodrelations/v1#DeliveryModeFreight\n*
http://purl.org/goodrelations/v1#DeliveryModeMail\n*
http://purl.org/goodrelations/v1#DeliveryModeOwnFleet\n*
http://purl.org/goodrelations/v1#DeliveryModePickUp\n*
http://purl.org/goodrelations/v1#DHL\n*
http://purl.org/goodrelations/v1#FederalExpress\n*
http://purl.org/goodrelations/v1#UPS 




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Enumeration>

=cut

1;
