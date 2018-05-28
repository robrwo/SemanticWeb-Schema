package LDF::Schema::ParcelService;

# ABSTRACT: <p>A private parcel service as the delivery mode available for a certain offer

use Moo;

extends qw/ LDF::Schema::DeliveryMethod /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

=begin html

<p>A private parcel service as the delivery mode available for a certain
offer.</p> <p>Commonly used values:</p> <ul>
<li>http://purl.org/goodrelations/v1#DHL</li>
<li>http://purl.org/goodrelations/v1#FederalExpress</li>
<li>http://purl.org/goodrelations/v1#UPS</li> </ul> 

=end html




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'ParcelService' }



=head1 SEE ALSO



L<LDF::Schema::DeliveryMethod>

=cut

1;
