use utf8;

package SemanticWeb::Schema::gtin14;

# ABSTRACT: The GTIN-14 code of the product

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'gtin14';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The GTIN-14 code of the product, or the product to which the offer refers.
See [GS1 GTIN Summary](http://www.gs1.org/barcodes/technical/idkeys/gtin)
for more details.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
