use utf8;

package SemanticWeb::Schema::PaymentMethod;

# ABSTRACT: A payment method is a standardized procedure for transferring the monetary amount for a purchase

use Moo;

extends qw/ SemanticWeb::Schema::Enumeration /;


use MooX::JSON_LD 'PaymentMethod';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.9.1';

=encoding utf8

=head1 DESCRIPTION

=begin html

A payment method is a standardized procedure for transferring the monetary
amount for a purchase. Payment methods are characterized by the legal and
technical structures used, and by the organization or group carrying out
the transaction.<br/><br/> Commonly used values:<br/><br/> <ul>
<li>http://purl.org/goodrelations/v1#ByBankTransferInAdvance</li>
<li>http://purl.org/goodrelations/v1#ByInvoice</li>
<li>http://purl.org/goodrelations/v1#Cash</li>
<li>http://purl.org/goodrelations/v1#CheckInAdvance</li>
<li>http://purl.org/goodrelations/v1#COD</li>
<li>http://purl.org/goodrelations/v1#DirectDebit</li>
<li>http://purl.org/goodrelations/v1#GoogleCheckout</li>
<li>http://purl.org/goodrelations/v1#PayPal</li>
<li>http://purl.org/goodrelations/v1#PaySwarm</li> </ul> 

=end html




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Enumeration>

=cut

1;
