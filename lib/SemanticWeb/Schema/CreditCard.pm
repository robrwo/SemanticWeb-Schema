use utf8;

package SemanticWeb::Schema::CreditCard;

# ABSTRACT: A card payment method of a particular brand or name

use Moo;

extends qw/ SemanticWeb::Schema::LoanOrCredit SemanticWeb::Schema::PaymentCard /;


use MooX::JSON_LD 'CreditCard';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v15.0.1';

=encoding utf8

=head1 DESCRIPTION

A card payment method of a particular brand or name.  Used to mark up a particular payment method and/or the financial product/service that supplies the card account.

Commonly used values:

=over

=item *

http://purl.org/goodrelations/v1#AmericanExpress


=item *

http://purl.org/goodrelations/v1#DinersClub


=item *

http://purl.org/goodrelations/v1#Discover


=item *

http://purl.org/goodrelations/v1#JCB


=item *

http://purl.org/goodrelations/v1#MasterCard


=item *

http://purl.org/goodrelations/v1#VISA


=back



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::PaymentCard>

=cut

1;
