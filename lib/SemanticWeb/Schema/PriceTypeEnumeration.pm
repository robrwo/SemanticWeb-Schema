use utf8;

package SemanticWeb::Schema::PriceTypeEnumeration;

# ABSTRACT: Enumerates different price types

use Moo;

extends qw/ SemanticWeb::Schema::Enumeration /;


use MooX::JSON_LD 'PriceTypeEnumeration';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v11.1.2';

=encoding utf8

=head1 DESCRIPTION

Enumerates different price types, for example list price, invoice price,
and sale price.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Enumeration>

=cut

1;
