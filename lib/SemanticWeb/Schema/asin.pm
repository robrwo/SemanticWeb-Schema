use utf8;

package SemanticWeb::Schema::asin;

# ABSTRACT: An Amazon Standard Identification Number (ASIN) is a 10-character alphanumeric unique identifier assigned by Amazon

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'asin';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

An Amazon Standard Identification Number (ASIN) is a 10-character
alphanumeric unique identifier assigned by Amazon.com and its partners for
product identification within the Amazon organization (summary from
[Wikipedia](https://en.wikipedia.org/wiki/Amazon_Standard_Identification_Nu
mber)'s article). Note also that this is a definition for how to include
ASINs in Schema.org data, and not a definition of ASINs in general - see
documentation from Amazon for authoritative details. ASINs are most
commonly encoded as text strings, but the [asin] property supports URL/URI
as potential values too.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
