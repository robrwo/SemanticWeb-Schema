package SemanticWeb::Schema::OrderAction;

# ABSTRACT: An agent orders an object/product/service to be delivered/sent.

use Moo;

extends qw/ SemanticWeb::Schema::TradeAction /;


use MooX::JSON_LD 'OrderAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

An agent orders an object/product/service to be delivered/sent.




=head1 ATTRIBUTES


=head2 C<delivery_method>

C<deliveryMethod>

A sub property of instrument. The method of delivery.


A delivery_method should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::DeliveryMethod']>

=back

=cut

has delivery_method => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'deliveryMethod',
    json_ld_serializer => \&_serialize_delivery_method,
);

sub _serialize_delivery_method { $_[0]->_serializer('delivery_method') }




=head1 SEE ALSO



L<SemanticWeb::Schema::TradeAction>

=cut

1;
