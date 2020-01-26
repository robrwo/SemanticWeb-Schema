use utf8;

package SemanticWeb::Schema::IceCreamShop;

# ABSTRACT: An ice cream shop.

use Moo;

extends qw/ SemanticWeb::Schema::FoodEstablishment /;


use MooX::JSON_LD 'IceCreamShop';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v6.0.1';

=encoding utf8

=head1 DESCRIPTION

An ice cream shop.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::FoodEstablishment>

=cut

1;
