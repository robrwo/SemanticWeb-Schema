use utf8;

package SemanticWeb::Schema::OfferCatalog;

# ABSTRACT: An OfferCatalog is an ItemList that contains related Offers and/or further OfferCatalogs that are offeredBy the same provider.

use Moo;

extends qw/ SemanticWeb::Schema::ItemList /;


use MooX::JSON_LD 'OfferCatalog';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v12.0.1';

=encoding utf8

=head1 DESCRIPTION

An OfferCatalog is an ItemList that contains related Offers and/or further
OfferCatalogs that are offeredBy the same provider.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::ItemList>

=cut

1;
