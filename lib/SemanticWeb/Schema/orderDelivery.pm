use utf8;

package SemanticWeb::Schema::orderDelivery;

# ABSTRACT: The delivery of the parcel related to this order or order item.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'orderDelivery';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The delivery of the parcel related to this order or order item.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
