package SemanticWeb::Schema::ParcelService;

# ABSTRACT: <p>A private parcel service as the delivery mode available for a certain offer

use Moo;

extends qw/ SemanticWeb::Schema::DeliveryMethod /;


use MooX::JSON_LD 'ParcelService';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.2';

=head1 DESCRIPTION

=begin html

<p>A private parcel service as the delivery mode available for a certain
offer.</p> <p>Commonly used values:</p> <ul>
<li>http://purl.org/goodrelations/v1#DHL</li>
<li>http://purl.org/goodrelations/v1#FederalExpress</li>
<li>http://purl.org/goodrelations/v1#UPS</li> </ul> 

=end html




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::DeliveryMethod>

=cut

1;
