package LDF::Schema::TrackAction;

# ABSTRACT: <p>An agent tracks an object for updates

use Moo;

extends qw/ LDF::Schema::FindAction /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

=begin html

<p>An agent tracks an object for updates.</p> <p>Related actions:</p> <ul>
<li><a class="localLink"
href="http://schema.org/FollowAction">FollowAction</a>: Unlike
FollowAction, TrackAction refers to the interest on the location of
innanimates objects.</li> <li><a class="localLink"
href="http://schema.org/SubscribeAction">SubscribeAction</a>: Unlike
SubscribeAction, TrackAction refers to the interest on the location of
innanimate objects.</li> </ul> 

=end html



Note that this class was generated automatically from the following sources:

=over

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




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'TrackAction' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields,
      { deliveryMethod => 'delivery_method' },
    ]
};




=head1 SEE ALSO



L<LDF::Schema::FindAction>

=cut

1;
