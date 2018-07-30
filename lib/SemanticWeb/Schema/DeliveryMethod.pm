package SemanticWeb::Schema::DeliveryMethod;

# ABSTRACT: <p>A delivery method is a standardized procedure for transferring the product or service to the destination of fulfillment chosen by the customer

use Moo;

extends qw/ SemanticWeb::Schema::Enumeration /;


use MooX::JSON_LD 'DeliveryMethod';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.2';

=head1 DESCRIPTION

=begin html

<p>A delivery method is a standardized procedure for transferring the
product or service to the destination of fulfillment chosen by the
customer. Delivery methods are characterized by the means of transportation
used, and by the organization or group that is the contracting party for
the sending organization or person.</p> <p>Commonly used values:</p> <ul>
<li>http://purl.org/goodrelations/v1#DeliveryModeDirectDownload</li>
<li>http://purl.org/goodrelations/v1#DeliveryModeFreight</li>
<li>http://purl.org/goodrelations/v1#DeliveryModeMail</li>
<li>http://purl.org/goodrelations/v1#DeliveryModeOwnFleet</li>
<li>http://purl.org/goodrelations/v1#DeliveryModePickUp</li>
<li>http://purl.org/goodrelations/v1#DHL</li>
<li>http://purl.org/goodrelations/v1#FederalExpress</li>
<li>http://purl.org/goodrelations/v1#UPS</li> </ul> 

=end html




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Enumeration>

=cut

1;
