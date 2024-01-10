use utf8;

package SemanticWeb::Schema::ListPrice;

# ABSTRACT: Represents the list price (the price a product is actually advertised for) of an offered product.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'ListPrice';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Represents the list price (the price a product is actually advertised for)
of an offered product.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
