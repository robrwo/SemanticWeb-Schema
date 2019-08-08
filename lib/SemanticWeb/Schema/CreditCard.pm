use utf8;

package SemanticWeb::Schema::CreditCard;

# ABSTRACT: A card payment method of a particular brand or name

use Moo;

extends qw/ SemanticWeb::Schema::LoanOrCredit SemanticWeb::Schema::PaymentCard /;


use MooX::JSON_LD 'CreditCard';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.9.0';

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




=head1 ATTRIBUTES


=head2 C<monthly_minimum_repayment_amount>

C<monthlyMinimumRepaymentAmount>

The minimum payment is the lowest amount of money that one is required to
pay on a credit card statement each month.


A monthly_minimum_repayment_amount should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MonetaryAmount']>

=item C<Num>

=back

=cut

has monthly_minimum_repayment_amount => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'monthlyMinimumRepaymentAmount',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::PaymentCard>

=cut

1;
