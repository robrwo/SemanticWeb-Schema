use utf8;

package SemanticWeb::Schema::FastFoodRestaurant;

# ABSTRACT: A fast-food restaurant.

use Moo;

extends qw/ SemanticWeb::Schema::FoodEstablishment /;


use MooX::JSON_LD 'FastFoodRestaurant';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v6.0.0';

=encoding utf8

=head1 DESCRIPTION

A fast-food restaurant.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::FoodEstablishment>

=cut

1;
