use utf8;

package SemanticWeb::Schema::TrackAction;

# ABSTRACT: An agent tracks an object for updates

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::FindAction /;


use MooX::JSON_LD 'TrackAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v22.0.1';

=encoding utf8

=head1 DESCRIPTION

An agent tracks an object for updates.

Related actions:

=over

=item *

L<SemanticWeb::Schema::FollowAction>: Unlike FollowAction, TrackAction refers to the interest on the location of innanimates objects.


=item *

L<SemanticWeb::Schema::SubscribeAction>: Unlike SubscribeAction, TrackAction refers to  the interest on the location of innanimate objects.


=back



=head1 ATTRIBUTES


=head2 C<delivery_method>

C<deliveryMethod>

A sub property of instrument. The method of delivery.


A delivery_method should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::DeliveryMethod']>

=back

=head2 C<_has_delivery_method>

A predicate for the L</delivery_method> attribute.

=cut

has delivery_method => (
    is        => 'rw',
    predicate => '_has_delivery_method',
    json_ld   => 'deliveryMethod',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::FindAction>

=cut

1;
