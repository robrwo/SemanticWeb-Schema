use utf8;

package SemanticWeb::Schema::ParcelService;

# ABSTRACT: A private parcel service as the delivery mode available for a certain offer

use Moo;

extends qw/ SemanticWeb::Schema::DeliveryMethod /;


use MooX::JSON_LD 'ParcelService';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v11.1.2';

=encoding utf8

=head1 DESCRIPTION

=begin html

<p>A private parcel service as the delivery mode available for a certain
offer.<br/><br/> Commonly used values:<br/><br/> <ul>
<li>http://purl.org/goodrelations/v1#DHL</li>
<li>http://purl.org/goodrelations/v1#FederalExpress</li>
<li>http://purl.org/goodrelations/v1#UPS</li> </ul> <p>

=end html




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::DeliveryMethod>

=cut

1;
