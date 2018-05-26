package LDF::Schema::BroadcastService;

# ABSTRACT: A delivery service through which content is provided via broadcast over the air or online.

use Moo;

extends qw/ LDF::Schema::Service /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A delivery service through which content is provided via broadcast over the
air or online.




=head1 ATTRIBUTES


=head2 C<area>



The area within which users can expect to reach the broadcast service.


A area should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Place']>

=back

=cut

has area => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<broadcast_affiliate_of>

C<broadcastAffiliateOf>

The media network(s) whose content is broadcast on this station.


A broadcast_affiliate_of should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Organization']>

=back

=cut

has broadcast_affiliate_of => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<broadcast_display_name>

C<broadcastDisplayName>

The name displayed in the channel guide. For many US affiliates, it is the
network name.


A broadcast_display_name should be one of the following types:

=over

=item C<Str>

=back

=cut

has broadcast_display_name => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<broadcast_timezone>

C<broadcastTimezone>

=begin html

The timezone in <a href="http://en.wikipedia.org/wiki/ISO_8601">ISO 8601
format</a> for which the service bases its broadcasts

=end html


A broadcast_timezone should be one of the following types:

=over

=item C<Str>

=back

=cut

has broadcast_timezone => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<broadcaster>



The organization owning or operating the broadcast service.


A broadcaster should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Organization']>

=back

=cut

has broadcaster => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<parent_service>

C<parentService>

A broadcast service to which the broadcast service may belong to such as
regional variations of a national channel.


A parent_service should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::BroadcastService']>

=back

=cut

has parent_service => (
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

sub json_ld_type { 'BroadcastService' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields,
      { area => 'area' },
      { broadcastAffiliateOf => 'broadcast_affiliate_of' },
      { broadcastDisplayName => 'broadcast_display_name' },
      { broadcastTimezone => 'broadcast_timezone' },
      { broadcaster => 'broadcaster' },
      { parentService => 'parent_service' },
      { videoFormat => 'video_format' },
    ]
};




=head1 SEE ALSO



L<LDF::Schema::Service>

=cut

1;
