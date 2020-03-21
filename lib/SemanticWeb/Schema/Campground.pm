use utf8;

package SemanticWeb::Schema::Campground;

# ABSTRACT: A camping site

use Moo;

extends qw/ SemanticWeb::Schema::CivicStructure SemanticWeb::Schema::LodgingBusiness /;


use MooX::JSON_LD 'Campground';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v7.0.1';

=encoding utf8

=head1 DESCRIPTION

=begin html

<p>A camping site, campsite, or <a class="localLink"
href="http://schema.org/Campground">Campground</a> is a place used for
overnight stay in the outdoors, typically containing individual <a
class="localLink" href="http://schema.org/CampingPitch">CampingPitch</a>
locations. <br/><br/> In British English a campsite is an area, usually
divided into a number of pitches, where people can camp overnight using
tents or camper vans or caravans; this British English use of the word is
synonymous with the American English expression campground. In American
English the term campsite generally means an area where an individual,
family, group, or military unit can pitch a tent or park a camper; a
campground may contain many campsites (Source: Wikipedia see <a
href="https://en.wikipedia.org/wiki/Campsite">https://en.wikipedia.org/wiki
/Campsite</a>).<br/><br/> See also the dedicated <a
href="/docs/hotels.html">document on the use of schema.org for marking up
hotels and other forms of accommodations</a>.<p>

=end html




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::LodgingBusiness>

=cut

1;
