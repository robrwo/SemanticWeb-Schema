use utf8;

package SemanticWeb::Schema::CafeOrCoffeeShop;

# ABSTRACT: A cafe or coffee shop.

use Moo;

extends qw/ SemanticWeb::Schema::FoodEstablishment /;


use MooX::JSON_LD 'CafeOrCoffeeShop';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v4.0.2';

=encoding utf8

=head1 DESCRIPTION

A cafe or coffee shop.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::FoodEstablishment>

=cut

1;
