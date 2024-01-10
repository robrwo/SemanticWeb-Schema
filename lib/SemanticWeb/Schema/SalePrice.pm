use utf8;

package SemanticWeb::Schema::SalePrice;

# ABSTRACT: Represents a sale price (usually active for a limited period) of an offered product.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'SalePrice';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Represents a sale price (usually active for a limited period) of an offered
product.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
