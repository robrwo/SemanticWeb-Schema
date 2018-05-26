package LDF::Schema::BroadcastEvent;

# ABSTRACT: An over the air or online broadcast event.

use Moo;

extends qw/ LDF::Schema::PublicationEvent /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

An over the air or online broadcast event.



Note that this class was generated automatically from the following sources:

=over

=item L<http://schema.org/version/3.3/schema.rdf>

=back


=head1 ATTRIBUTES


=head2 C<broadcast_of_event>

C<broadcastOfEvent>

The event being broadcast such as a sporting event or awards ceremony.


A broadcast_of_event should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Event']>

=back

=cut

has broadcast_of_event => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<is_live_broadcast>

C<isLiveBroadcast>

True is the broadcast is of a live event.


A is_live_broadcast should be one of the following types:

=over

=item C<Bool>

=back

=cut

has is_live_broadcast => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<video_format>

C<videoFormat>

The type of screening or video broadcast used (e.g. IMAX, 3D, SD, HD,
etc.).


A video_format should be one of the following types:

=over

=item C<Str>

=back

=cut

has video_format => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'BroadcastEvent' }

=ead2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields,
      { broadcastOfEvent => 'broadcast_of_event' },
      { isLiveBroadcast => 'is_live_broadcast' },
      { videoFormat => 'video_format' },
    ]
};



=head1 SEE ALSO



L<LDF::Schema::PublicationEvent>

=cut

1;
