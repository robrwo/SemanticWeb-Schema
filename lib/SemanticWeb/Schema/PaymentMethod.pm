use utf8;

package SemanticWeb::Schema::PaymentMethod;

# ABSTRACT: A payment method is a standardized procedure for transferring the monetary amount for a purchase

use Moo;

extends qw/ SemanticWeb::Schema::Enumeration /;


use MooX::JSON_LD 'PaymentMethod';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v11.0.1';

=encoding utf8

=head1 DESCRIPTION

A payment method is a standardized procedure for transferring the monetary
amount for a purchase. Payment methods are characterized by the legal and
technical structures used, and by the organization or group carrying out
the transaction.\n\nCommonly used values:\n\n*
http://purl.org/goodrelations/v1#ByBankTransferInAdvance\n*
http://purl.org/goodrelations/v1#ByInvoice\n*
http://purl.org/goodrelations/v1#Cash\n*
http://purl.org/goodrelations/v1#CheckInAdvance\n*
http://purl.org/goodrelations/v1#COD\n*
http://purl.org/goodrelations/v1#DirectDebit\n*
http://purl.org/goodrelations/v1#GoogleCheckout\n*
http://purl.org/goodrelations/v1#PayPal\n*
http://purl.org/goodrelations/v1#PaySwarm 




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Enumeration>

=cut

1;
