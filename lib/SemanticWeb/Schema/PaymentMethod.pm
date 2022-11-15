use utf8;

package SemanticWeb::Schema::PaymentMethod;

# ABSTRACT: A payment method is a standardized procedure for transferring the monetary amount for a purchase

use Moo;

extends qw/ SemanticWeb::Schema::Enumeration /;


use MooX::JSON_LD 'PaymentMethod';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v15.0.1';

=encoding utf8

=head1 DESCRIPTION

A payment method is a standardized procedure for transferring the monetary amount for a purchase. Payment methods are characterized by the legal and technical structures used, and by the organization or group carrying out the transaction.

Commonly used values:

=over

=item *

http://purl.org/goodrelations/v1#ByBankTransferInAdvance


=item *

http://purl.org/goodrelations/v1#ByInvoice


=item *

http://purl.org/goodrelations/v1#Cash


=item *

http://purl.org/goodrelations/v1#CheckInAdvance


=item *

http://purl.org/goodrelations/v1#COD


=item *

http://purl.org/goodrelations/v1#DirectDebit


=item *

http://purl.org/goodrelations/v1#GoogleCheckout


=item *

http://purl.org/goodrelations/v1#PayPal


=item *

http://purl.org/goodrelations/v1#PaySwarm


=back



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Enumeration>

=cut

1;
