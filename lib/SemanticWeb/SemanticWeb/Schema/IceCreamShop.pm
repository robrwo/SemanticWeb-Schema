package SemanticWeb::Schema::IceCreamShop;

# ABSTRACT: An ice cream shop.

use Moo;

extends qw/ SemanticWeb::Schema::FoodEstablishment /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

An ice cream shop.




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'IceCreamShop' }



=head1 SEE ALSO



L<SemanticWeb::Schema::FoodEstablishment>

=cut

1;
