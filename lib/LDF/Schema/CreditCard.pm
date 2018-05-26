package LDF::Schema::CreditCard;

# ABSTRACT: <p>A card payment method of a particular brand or name

use Moo;

extends qw/ LDF::Schema::PaymentCard LDF::Schema::LoanOrCredit /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

=begin html

<p>A card payment method of a particular brand or name. Used to mark up a
particular payment method and/or the financial product/service that
supplies the card account.</p> <p>Commonly used values:</p> <ul>
<li>http://purl.org/goodrelations/v1#AmericanExpress</li>
<li>http://purl.org/goodrelations/v1#DinersClub</li>
<li>http://purl.org/goodrelations/v1#Discover</li>
<li>http://purl.org/goodrelations/v1#JCB</li>
<li>http://purl.org/goodrelations/v1#MasterCard</li>
<li>http://purl.org/goodrelations/v1#VISA</li> </ul> 

=end html



Note that this class was generated automatically from the following sources:

=over

=item L<http://schema.org/version/3.3/schema.rdf>

=back


=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'CreditCard' }



=head1 SEE ALSO



L<LDF::Schema::LoanOrCredit>

=cut

1;
