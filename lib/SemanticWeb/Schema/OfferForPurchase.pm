use utf8;

package SemanticWeb::Schema::OfferForPurchase;

# ABSTRACT: An [[OfferForPurchase]] in Schema

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::Offer /;


use MooX::JSON_LD 'OfferForPurchase';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.2';

=encoding utf8

=head1 DESCRIPTION

An L<SemanticWeb::Schema::OfferForPurchase> in Schema.org represents an L<SemanticWeb::Schema::Offer> to sell something, i.e. an L<SemanticWeb::Schema::Offer> whose
  [[businessFunction]] is L<sell|http://purl.org/goodrelations/v1#Sell.>. See L<Good Relations|https://en.wikipedia.org/wiki/GoodRelations> for
  background on the underlying concepts.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Offer>

=cut

1;
