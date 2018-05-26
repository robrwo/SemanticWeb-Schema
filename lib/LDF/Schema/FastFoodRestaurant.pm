package LDF::Schema::FastFoodRestaurant;

# ABSTRACT: A fast-food restaurant.

use Moo;

extends qw/ LDF::Schema::FoodEstablishment /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A fast-food restaurant.




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'FastFoodRestaurant' }



=head1 SEE ALSO



L<LDF::Schema::FoodEstablishment>

=cut

1;
