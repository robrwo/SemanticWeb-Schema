use utf8;

package SemanticWeb::Schema::shippingRate;

# ABSTRACT: The shipping rate is the cost of shipping to the specified destination

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'shippingRate';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The shipping rate is the cost of shipping to the specified destination. Typically, the maxValue and currency values (of the L<SemanticWeb::Schema::MonetaryAmount>) are most appropriate.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
