use utf8;

package SemanticWeb::Schema::CreditCard;

# ABSTRACT: A card payment method of a particular brand or name

use Moo;

extends qw/ SemanticWeb::Schema::PaymentCard SemanticWeb::Schema::LoanOrCredit /;


use MooX::JSON_LD 'CreditCard';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.5.1';

=encoding utf8

=head1 DESCRIPTION

=begin html

A card payment method of a particular brand or name. Used to mark up a
particular payment method and/or the financial product/service that
supplies the card account.<br/><br/> Commonly used values:<br/><br/> <ul>
<li>http://purl.org/goodrelations/v1#AmericanExpress</li>
<li>http://purl.org/goodrelations/v1#DinersClub</li>
<li>http://purl.org/goodrelations/v1#Discover</li>
<li>http://purl.org/goodrelations/v1#JCB</li>
<li>http://purl.org/goodrelations/v1#MasterCard</li>
<li>http://purl.org/goodrelations/v1#VISA</li> </ul> 

=end html




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::LoanOrCredit>

=cut

1;
