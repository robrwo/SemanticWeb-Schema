use utf8;

package SemanticWeb::Schema::priceComponentType;

# ABSTRACT: Identifies a price component (for example

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'priceComponentType';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Identifies a price component (for example, a line item on an invoice), part
of the total price for an offer.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
