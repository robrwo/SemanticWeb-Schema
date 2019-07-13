use utf8;

package SemanticWeb::Schema::CampingPitch;

# ABSTRACT: A <a class="localLink" href="http://schema

use Moo;

extends qw/ SemanticWeb::Schema::Accommodation /;


use MooX::JSON_LD 'CampingPitch';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.6.0';

=encoding utf8

=head1 DESCRIPTION

=begin html

A <a class="localLink"
href="http://schema.org/CampingPitch">CampingPitch</a> is an individual
place for overnight stay in the outdoors, typically being part of a larger
camping site, or <a class="localLink"
href="http://schema.org/Campground">Campground</a>.<br/><br/> In British
English a campsite, or campground, is an area, usually divided into a
number of pitches, where people can camp overnight using tents or camper
vans or caravans; this British English use of the word is synonymous with
the American English expression campground. In American English the term
campsite generally means an area where an individual, family, group, or
military unit can pitch a tent or park a camper; a campground may contain
many campsites. (Source: Wikipedia see <a
href="https://en.wikipedia.org/wiki/Campsite">https://en.wikipedia.org/wiki
/Campsite</a>).<br/><br/> See also the dedicated <a
href="/docs/hotels.html">document on the use of schema.org for marking up
hotels and other forms of accommodations</a>.

=end html




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Accommodation>

=cut

1;
