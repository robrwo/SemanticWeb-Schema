use utf8;

package SemanticWeb::Schema::TouristTrip;

# ABSTRACT: A tourist trip

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::Trip /;


use MooX::JSON_LD 'TouristTrip';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v22.0.0';

=encoding utf8

=head1 DESCRIPTION

A tourist trip. A created itinerary of visits to one or more places of interest (L<SemanticWeb::Schema::TouristAttraction>/L<SemanticWeb::Schema::TouristDestination>) often linked by a similar theme, geographic area, or interest to a particular [[touristType]]. The L<UNWTO|http://www2.unwto.org/> defines tourism trip as the Trip taken by visitors.
  (See examples below.)



=head1 ATTRIBUTES


=head2 C<tourist_type>

C<touristType>

Attraction suitable for type(s) of tourist. E.g. children, visitors from a
particular country, etc. 


A tourist_type should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Audience']>

=item C<Str>

=back

=head2 C<_has_tourist_type>

A predicate for the L</tourist_type> attribute.

=cut

has tourist_type => (
    is        => 'rw',
    predicate => '_has_tourist_type',
    json_ld   => 'touristType',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Trip>

=cut

1;
