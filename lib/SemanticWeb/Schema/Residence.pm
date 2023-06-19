use utf8;

package SemanticWeb::Schema::Residence;

# ABSTRACT: The place where a person lives.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::Place /;


use MooX::JSON_LD 'Residence';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.2';

=encoding utf8

=head1 DESCRIPTION

The place where a person lives.




=head1 ATTRIBUTES


=head2 C<accommodation_floor_plan>

C<accommodationFloorPlan>

A floorplan of some L<SemanticWeb::Schema::Accommodation>.

A accommodation_floor_plan should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::FloorPlan']>

=back

=head2 C<_has_accommodation_floor_plan>

A predicate for the L</accommodation_floor_plan> attribute.

=cut

has accommodation_floor_plan => (
    is        => 'rw',
    predicate => '_has_accommodation_floor_plan',
    json_ld   => 'accommodationFloorPlan',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Place>

=cut

1;
