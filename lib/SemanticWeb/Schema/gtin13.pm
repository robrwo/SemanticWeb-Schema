use utf8;

package SemanticWeb::Schema::gtin13;

# ABSTRACT: The GTIN-13 code of the product

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'gtin13';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The GTIN-13 code of the product, or the product to which the offer refers.
This is equivalent to 13-digit ISBN codes and EAN UCC-13. Former 12-digit
UPC codes can be converted into a GTIN-13 code by simply adding a preceding
zero. See [GS1 GTIN
Summary](http://www.gs1.org/barcodes/technical/idkeys/gtin) for more
details.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
