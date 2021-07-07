use utf8;

package SemanticWeb::Schema::TouristDestination;

# ABSTRACT: A tourist destination

use Moo;

extends qw/ SemanticWeb::Schema::Place /;


use MooX::JSON_LD 'TouristDestination';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v13.0.1';

=encoding utf8

=head1 DESCRIPTION

A tourist destination. In principle any L<SemanticWeb::Schema::Place> can be a L<SemanticWeb::Schema::TouristDestination> from a L<SemanticWeb::Schema::City>, Region or L<SemanticWeb::Schema::Country> to an L<SemanticWeb::Schema::AmusementPark> or L<SemanticWeb::Schema::Hotel>. This Type can be used on its own to describe a general L<SemanticWeb::Schema::TouristDestination>, or be used as an [[additionalType]] to add tourist relevant properties to any other L<SemanticWeb::Schema::Place>.  A L<SemanticWeb::Schema::TouristDestination> is defined as a L<SemanticWeb::Schema::Place> that contains, or is colocated with, one or more L<SemanticWeb::Schema::TouristAttraction>s, often linked by a similar theme or interest to a particular [[touristType]]. The L<UNWTO|http://www2.unwto.org/> defines Destination (main destination of a tourism trip) as the place visited that is central to the decision to take the trip.
  (See examples below).



=head1 ATTRIBUTES


=head2 C<includes_attraction>

C<includesAttraction>

Attraction located at destination.


A includes_attraction should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::TouristAttraction']>

=back

=head2 C<_has_includes_attraction>

A predicate for the L</includes_attraction> attribute.

=cut

has includes_attraction => (
    is        => 'rw',
    predicate => '_has_includes_attraction',
    json_ld   => 'includesAttraction',
);


=head2 C<tourist_type>

C<touristType>

Attraction suitable for type(s) of tourist. eg. Children, visitors from a
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



L<SemanticWeb::Schema::Place>

=cut

1;
