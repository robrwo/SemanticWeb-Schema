use utf8;

package SemanticWeb::Schema::TouristTrip;

# ABSTRACT: A tourist trip

use Moo;

extends qw/ SemanticWeb::Schema::Trip /;


use MooX::JSON_LD 'TouristTrip';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v4.0.1';

=encoding utf8

=head1 DESCRIPTION

=begin html

A tourist trip. A created itinerary of visits to one or more places of
interest (<a class="localLink"
href="http://schema.org/TouristAttraction">TouristAttraction</a>/<a
class="localLink"
href="http://schema.org/TouristDestination">TouristDestination</a>) often
linked by a similar theme, geographic area, or interest to a particular <a
class="localLink" href="http://schema.org/touristType">touristType</a>. The
<a href="http://www2.unwto.org/">UNWTO</a> defines tourism trip as the Trip
taken by visitors. (See examples below).

=end html




=head1 ATTRIBUTES


=head2 C<tourist_type>

C<touristType>

Attraction suitable for type(s) of tourist. eg. Children, visitors from a
particular country, etc.


A tourist_type should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Audience']>

=item C<Str>

=back

=cut

has tourist_type => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'touristType',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Trip>

=cut

1;
