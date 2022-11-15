use utf8;

package SemanticWeb::Schema::Campground;

# ABSTRACT: A camping site

use Moo;

extends qw/ SemanticWeb::Schema::CivicStructure SemanticWeb::Schema::LodgingBusiness /;


use MooX::JSON_LD 'Campground';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v15.0.1';

=encoding utf8

=head1 DESCRIPTION

A camping site, campsite, or L<SemanticWeb::Schema::Campground> is a place used for overnight stay in the outdoors, typically containing individual L<SemanticWeb::Schema::CampingPitch> locations. 

In British English a campsite is an area, usually divided into a number of pitches, where people can camp overnight using tents or camper vans or caravans; this British English use of the word is synonymous with the American English expression campground. In American English the term campsite generally means an area where an individual, family, group, or military unit can pitch a tent or park a camper; a campground may contain many campsites (source: Wikipedia, see L<https://en.wikipedia.org/wiki/Campsite|https://en.wikipedia.org/wiki/Campsite>).

See also the dedicated L<document on the use of schema.org for marking up hotels and other forms of accommodations|/docs/hotels.html>.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::LodgingBusiness>

=cut

1;
