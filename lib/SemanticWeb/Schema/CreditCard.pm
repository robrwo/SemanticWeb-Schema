use utf8;

package SemanticWeb::Schema::CreditCard;

# ABSTRACT: A card payment method of a particular brand or name

use Moo;

extends qw/ SemanticWeb::Schema::LoanOrCredit SemanticWeb::Schema::PaymentCard /;


use MooX::JSON_LD 'CreditCard';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v11.0.0';

=encoding utf8

=head1 DESCRIPTION

A card payment method of a particular brand or name. Used to mark up a
particular payment method and/or the financial product/service that
supplies the card account.\n\nCommonly used values:\n\n*
http://purl.org/goodrelations/v1#AmericanExpress\n*
http://purl.org/goodrelations/v1#DinersClub\n*
http://purl.org/goodrelations/v1#Discover\n*
http://purl.org/goodrelations/v1#JCB\n*
http://purl.org/goodrelations/v1#MasterCard\n*
http://purl.org/goodrelations/v1#VISA 




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::PaymentCard>

=cut

1;
