use utf8;

package SemanticWeb::Schema::PriceComponentTypeEnumeration;

# ABSTRACT: Enumerates different price components that together make up the total price for an offered product.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::Enumeration /;


use MooX::JSON_LD 'PriceComponentTypeEnumeration';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v23.0.0';

=encoding utf8

=head1 DESCRIPTION

Enumerates different price components that together make up the total price
for an offered product.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Enumeration>

=cut

1;
