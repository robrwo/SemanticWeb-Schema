use utf8;

package SemanticWeb::Schema::gtin12;

# ABSTRACT: The GTIN-12 code of the product

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'gtin12';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The GTIN-12 code of the product, or the product to which the offer refers.
The GTIN-12 is the 12-digit GS1 Identification Key composed of a U.P.C.
Company Prefix, Item Reference, and Check Digit used to identify trade
items. See [GS1 GTIN
Summary](http://www.gs1.org/barcodes/technical/idkeys/gtin) for more
details.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
