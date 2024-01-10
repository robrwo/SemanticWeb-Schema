use utf8;

package SemanticWeb::Schema::gtin;

# ABSTRACT: A Global Trade Item Number ([GTIN](https://www

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'gtin';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A Global Trade Item Number (L<GTIN|https://www.gs1.org/standards/id-keys/gtin>). GTINs identify trade items, including products and services, using numeric identification codes.

The GS1 L<digital link specifications|https://www.gs1.org/standards/Digital-Link/> express GTINs as URLs (URIs, IRIs, etc.). Details including regular expression examples can be found in, Section 6 of the GS1 URI Syntax specification; see also L<schema.org tracking issue|https://github.com/schemaorg/schemaorg/issues/3156#issuecomment-1209522809> for schema.org-specific discussion. A correct [[gtin]] value should be a valid GTIN, which means that it should be an all-numeric string of either 8, 12, 13 or 14 digits, or a "GS1 Digital Link" URL based on such a string. The numeric component should also have a L<valid GS1 check digit|https://www.gs1.org/services/check-digit-calculator> and meet the other rules for valid GTINs. See also L<GS1's GTIN Summary|http://www.gs1.org/barcodes/technical/idkeys/gtin> and L<Wikipedia|https://en.wikipedia.org/wiki/Global_Trade_Item_Number> for more details. Left-padding of the gtin values is not required or encouraged. The [[gtin]] property generalizes the earlier [[gtin8]], [[gtin12]], [[gtin13]], and [[gtin14]] properties.

Note also that this is a definition for how to include GTINs in Schema.org data, and not a definition of GTINs in general - see the GS1 documentation for authoritative details.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
