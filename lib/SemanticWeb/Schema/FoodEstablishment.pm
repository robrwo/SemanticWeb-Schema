use utf8;

package SemanticWeb::Schema::FoodEstablishment;

# ABSTRACT: A food-related business.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::LocalBusiness /;


use MooX::JSON_LD 'FoodEstablishment';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.0';

=encoding utf8

=head1 DESCRIPTION

A food-related business.




=head1 ATTRIBUTES


=head2 C<accepts_reservations>

C<acceptsReservations>

Indicates whether a FoodEstablishment accepts reservations. Values can be
Boolean, an URL at which reservations can be made or (for backwards
compatibility) the strings ```Yes``` or ```No```.


A accepts_reservations should be one of the following types:

=over

=item C<Bool>

=item C<Str>

=back

=head2 C<_has_accepts_reservations>

A predicate for the L</accepts_reservations> attribute.

=cut

has accepts_reservations => (
    is        => 'rw',
    predicate => '_has_accepts_reservations',
    json_ld   => 'acceptsReservations',
);


=head2 C<has_menu>

C<hasMenu>

Either the actual menu as a structured representation, as text, or a URL of
the menu.


A has_menu should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Menu']>

=item C<Str>

=back

=head2 C<_has_has_menu>

A predicate for the L</has_menu> attribute.

=cut

has has_menu => (
    is        => 'rw',
    predicate => '_has_has_menu',
    json_ld   => 'hasMenu',
);


=head2 C<menu>



Either the actual menu as a structured representation, as text, or a URL of
the menu.


A menu should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Menu']>

=item C<Str>

=back

=head2 C<_has_menu>

A predicate for the L</menu> attribute.

=cut

has menu => (
    is        => 'rw',
    predicate => '_has_menu',
    json_ld   => 'menu',
);


=head2 C<serves_cuisine>

C<servesCuisine>

The cuisine of the restaurant.


A serves_cuisine should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_serves_cuisine>

A predicate for the L</serves_cuisine> attribute.

=cut

has serves_cuisine => (
    is        => 'rw',
    predicate => '_has_serves_cuisine',
    json_ld   => 'servesCuisine',
);


=head2 C<star_rating>

C<starRating>

An official rating for a lodging business or food establishment, e.g. from
national associations or standards bodies. Use the author property to
indicate the rating organization, e.g. as an Organization with name such as
(e.g. HOTREC, DEHOGA, WHR, or Hotelstars).


A star_rating should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Rating']>

=back

=head2 C<_has_star_rating>

A predicate for the L</star_rating> attribute.

=cut

has star_rating => (
    is        => 'rw',
    predicate => '_has_star_rating',
    json_ld   => 'starRating',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::LocalBusiness>

=cut

1;
