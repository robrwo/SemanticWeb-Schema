use utf8;

package SemanticWeb::Schema::TravelAction;

# ABSTRACT: The act of traveling from an fromLocation to a destination by a specified mode of transport

use Moo;

extends qw/ SemanticWeb::Schema::MoveAction /;


use MooX::JSON_LD 'TravelAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v7.0.2';

=encoding utf8

=head1 DESCRIPTION

The act of traveling from an fromLocation to a destination by a specified
mode of transport, optionally with participants.




=head1 ATTRIBUTES


=head2 C<distance>



The distance travelled, e.g. exercising or travelling.


A distance should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Distance']>

=back

=head2 C<_has_distance>

A predicate for the L</distance> attribute.

=cut

has distance => (
    is        => 'rw',
    predicate => '_has_distance',
    json_ld   => 'distance',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::MoveAction>

=cut

1;
