use utf8;

package SemanticWeb::Schema::OfferForPurchase;

# ABSTRACT: An [[OfferForPurchase]] in Schema

use Moo;

extends qw/ SemanticWeb::Schema::Offer /;


use MooX::JSON_LD 'OfferForPurchase';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v11.0.0';

=encoding utf8

=head1 DESCRIPTION

An [[OfferForPurchase]] in Schema.org represents an [[Offer]] to sell
something, i.e. an [[Offer]] whose [[businessFunction]] is
[sell](http://purl.org/goodrelations/v1#Sell.). See [Good
Relations](https://en.wikipedia.org/wiki/GoodRelations) for background on
the underlying concepts. 




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Offer>

=cut

1;
