use utf8;

package SemanticWeb::Schema::RefundTypeEnumeration;

# ABSTRACT: RefundTypeEnumeration enumerates several kinds of product return refund types.

use Moo;

extends qw/ SemanticWeb::Schema::Enumeration /;


use MooX::JSON_LD 'RefundTypeEnumeration';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v11.1.2';

=encoding utf8

=head1 DESCRIPTION

RefundTypeEnumeration enumerates several kinds of product return refund
types.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Enumeration>

=cut

1;
