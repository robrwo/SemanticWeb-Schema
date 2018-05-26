package LDF::Schema::SendAction;

# ABSTRACT: <p>The act of physically/electronically dispatching an object for transfer from an origin to a destination

use Moo;

extends qw/ LDF::Schema::TransferAction /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

=begin html

<p>The act of physically/electronically dispatching an object for transfer
from an origin to a destination.Related actions:</p> <ul> <li><a
class="localLink" href="http://schema.org/ReceiveAction">ReceiveAction</a>:
The reciprocal of SendAction.</li> <li><a class="localLink"
href="http://schema.org/GiveAction">GiveAction</a>: Unlike GiveAction,
SendAction does not imply the transfer of ownership (e.g. I can send you my
laptop, but I'm not necessarily giving it to you).</li> </ul> 

=end html



Note that this class was generated automatically from the following sources:

=over

=item L<http://schema.org/version/3.3/ext-meta.rdf>

=item L<http://schema.org/version/3.3/schema.rdf>

=back


=head1 ATTRIBUTES


=head2 C<delivery_method>

C<deliveryMethod>

A sub property of instrument. The method of delivery.


A delivery_method should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::DeliveryMethod']>

=back

=cut

has delivery_method => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<recipient>



A sub property of participant. The participant who is at the receiving end
of the action.


A recipient should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::ContactPoint']>

=item C<InstanceOf['LDF::Schema::Organization']>

=item C<InstanceOf['LDF::Schema::Audience']>

=item C<InstanceOf['LDF::Schema::Person']>

=back

=cut

has recipient => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'SendAction' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields,
      { deliveryMethod => 'delivery_method' },
      { recipient => 'recipient' },
    ]
};




=head1 SEE ALSO



L<LDF::Schema::TransferAction>

=cut

1;
