use utf8;

package SemanticWeb::Schema::OfferCatalog;

# ABSTRACT: An OfferCatalog is an ItemList that contains related Offers and/or further OfferCatalogs that are offeredBy the same provider.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::ItemList /;


use MooX::JSON_LD 'OfferCatalog';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

An OfferCatalog is an ItemList that contains related Offers and/or further
OfferCatalogs that are offeredBy the same provider.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::ItemList>

=cut

1;
