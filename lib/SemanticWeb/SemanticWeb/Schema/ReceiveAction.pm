package SemanticWeb::Schema::ReceiveAction;

# ABSTRACT: <p>The act of physically/electronically taking delivery of an object thathas been transferred from an origin to a destination

use Moo;

extends qw/ SemanticWeb::Schema::TransferAction /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

=begin html

<p>The act of physically/electronically taking delivery of an object
thathas been transferred from an origin to a destination. Reciprocal of
SendAction.</p> <p>Related actions:</p> <ul> <li><a class="localLink"
href="http://schema.org/SendAction">SendAction</a>: The reciprocal of
ReceiveAction.</li> <li><a class="localLink"
href="http://schema.org/TakeAction">TakeAction</a>: Unlike TakeAction,
ReceiveAction does not imply that the ownership has been transfered (e.g. I
can receive a package, but it does not mean the package is now mine).</li>
</ul> 

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
    predicate => 1,
);


=head2 C<sender>



A sub property of participant. The participant who is at the sending end of
the action.


A sender should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=item C<InstanceOf['SemanticWeb::Schema::Audience']>

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=back

=cut

has sender => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'ReceiveAction' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields, {
       'deliveryMethod' => $self->curry::_serializer('delivery_method'),
       'sender' => $self->curry::_serializer('sender'),
    } ]
};




=head1 SEE ALSO



L<SemanticWeb::Schema::TransferAction>

=cut

1;
