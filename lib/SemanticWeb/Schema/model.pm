use utf8;

package SemanticWeb::Schema::model;

# ABSTRACT: The model of the product

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'model';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The model of the product. Use with the URL of a ProductModel or a textual
representation of the model identifier. The URL of the ProductModel can be
from an external source. It is recommended to additionally provide strong
product identifiers via the gtin8/gtin13/gtin14 and mpn properties.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
