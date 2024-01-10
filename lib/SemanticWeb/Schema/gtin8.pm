use utf8;

package SemanticWeb::Schema::gtin8;

# ABSTRACT: The GTIN-8 code of the product

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'gtin8';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The GTIN-8 code of the product, or the product to which the offer refers.
This code is also known as EAN/UCC-8 or 8-digit EAN. See [GS1 GTIN
Summary](http://www.gs1.org/barcodes/technical/idkeys/gtin) for more
details.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
