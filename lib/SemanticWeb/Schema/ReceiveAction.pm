use utf8;

package SemanticWeb::Schema::ReceiveAction;

# ABSTRACT: The act of physically/electronically taking delivery of an object thathas been transferred from an origin to a destination

use Moo;

extends qw/ SemanticWeb::Schema::TransferAction /;


use MooX::JSON_LD 'ReceiveAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v5.0.1';

=encoding utf8

=head1 DESCRIPTION

=begin html

<p>The act of physically/electronically taking delivery of an object
thathas been transferred from an origin to a destination. Reciprocal of
SendAction.<br/><br/> Related actions:<br/><br/> <ul> <li><a
class="localLink" href="http://schema.org/SendAction">SendAction</a>: The
reciprocal of ReceiveAction.</li> <li><a class="localLink"
href="http://schema.org/TakeAction">TakeAction</a>: Unlike TakeAction,
ReceiveAction does not imply that the ownership has been transfered (e.g. I
can receive a package, but it does not mean the package is now mine).</li>
</ul> <p>

=end html




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
