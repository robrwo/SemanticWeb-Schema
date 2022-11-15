use utf8;

package SemanticWeb::Schema::CampingPitch;

# ABSTRACT: A [[CampingPitch]] is an individual place for overnight stay in the outdoors

use Moo;

extends qw/ SemanticWeb::Schema::Accommodation /;


use MooX::JSON_LD 'CampingPitch';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v15.0.0';

=encoding utf8

=head1 DESCRIPTION

A L<SemanticWeb::Schema::CampingPitch> is an individual place for overnight stay in the outdoors, typically being part of a larger camping site, or L<SemanticWeb::Schema::Campground>.

In British English a campsite, or campground, is an area, usually divided into a number of pitches, where people can camp overnight using tents or camper vans or caravans; this British English use of the word is synonymous with the American English expression campground. In American English the term campsite generally means an area where an individual, family, group, or military unit can pitch a tent or park a camper; a campground may contain many campsites.
(Source: Wikipedia, see L<https://en.wikipedia.org/wiki/Campsite|https://en.wikipedia.org/wiki/Campsite>.)

See also the dedicated L<document on the use of schema.org for marking up hotels and other forms of accommodations|/docs/hotels.html>.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Accommodation>

=cut

1;
