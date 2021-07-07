use utf8;

package SemanticWeb::Schema::ReceiveAction;

# ABSTRACT: The act of physically/electronically taking delivery of an object that has been transferred from an origin to a destination

use Moo;

extends qw/ SemanticWeb::Schema::TransferAction /;


use MooX::JSON_LD 'ReceiveAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v13.0.0';

=encoding utf8

=head1 DESCRIPTION

The act of physically/electronically taking delivery of an object that has been transferred from an origin to a destination. Reciprocal of SendAction.

Related actions:

=over

=item *

L<SemanticWeb::Schema::SendAction>: The reciprocal of ReceiveAction.


=item *

L<SemanticWeb::Schema::TakeAction>: Unlike TakeAction, ReceiveAction does not imply that the ownership has been transfered (e.g. I can receive a package, but it does not mean the package is now mine).


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


=head2 C<sender>



A sub property of participant. The participant who is at the sending end of
the action.


A sender should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Audience']>

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=head2 C<_has_sender>

A predicate for the L</sender> attribute.

=cut

has sender => (
    is        => 'rw',
    predicate => '_has_sender',
    json_ld   => 'sender',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::TransferAction>

=cut

1;
