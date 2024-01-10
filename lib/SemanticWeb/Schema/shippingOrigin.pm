use utf8;

package SemanticWeb::Schema::shippingOrigin;

# ABSTRACT: Indicates the origin of a shipment, i

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'shippingOrigin';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Indicates the origin of a shipment, i.e. where it should be coming from.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
