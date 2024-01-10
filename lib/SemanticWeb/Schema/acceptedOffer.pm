use utf8;

package SemanticWeb::Schema::acceptedOffer;

# ABSTRACT: The offer(s) -- e

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'acceptedOffer';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The offer(s) -- e.g., product, quantity and price combinations -- included
in the order.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
