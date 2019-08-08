use utf8;

package SemanticWeb::Schema::FoodEstablishment;

# ABSTRACT: A food-related business.

use Moo;

extends qw/ SemanticWeb::Schema::LocalBusiness /;


use MooX::JSON_LD 'FoodEstablishment';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.9.0';

=encoding utf8

=head1 DESCRIPTION

A food-related business.




=head1 ATTRIBUTES


=head2 C<accepts_reservations>

C<acceptsReservations>

=begin html

Indicates whether a FoodEstablishment accepts reservations. Values can be
Boolean, an URL at which reservations can be made or (for backwards
compatibility) the strings <code>Yes</code> or <code>No</code>.

=end html


A accepts_reservations should be one of the following types:

=over

=item C<Bool>

=item C<Str>

=back

=cut

has accepts_reservations => (
    is        => 'rw',
    predicate => 1,
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

=cut

has has_menu => (
    is        => 'rw',
    predicate => 1,
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

=cut

has menu => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'menu',
);


=head2 C<serves_cuisine>

C<servesCuisine>

The cuisine of the restaurant.


A serves_cuisine should be one of the following types:

=over

=item C<Str>

=back

=cut

has serves_cuisine => (
    is        => 'rw',
    predicate => 1,
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

=cut

has star_rating => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'starRating',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::LocalBusiness>

=cut

1;
