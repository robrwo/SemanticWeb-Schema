package SemanticWeb::Schema::BroadcastService;

# ABSTRACT: A delivery service through which content is provided via broadcast over the air or online.

use Moo;

extends qw/ SemanticWeb::Schema::Service /;


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

=item C<InstanceOf['SemanticWeb::Schema::Place']>

=back

=cut

has area => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'area',
    json_ld_serializer => \&_serialize_area,
);

sub _serialize_area { $_[0]->_serializer('area') }


=head2 C<broadcast_affiliate_of>

C<broadcastAffiliateOf>

The media network(s) whose content is broadcast on this station.


A broadcast_affiliate_of should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=back

=cut

has broadcast_affiliate_of => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'broadcastAffiliateOf',
    json_ld_serializer => \&_serialize_broadcast_affiliate_of,
);

sub _serialize_broadcast_affiliate_of { $_[0]->_serializer('broadcast_affiliate_of') }


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
    json_ld   => 'broadcastDisplayName',
    json_ld_serializer => \&_serialize_broadcast_display_name,
);

sub _serialize_broadcast_display_name { $_[0]->_serializer('broadcast_display_name') }


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
    json_ld   => 'broadcastTimezone',
    json_ld_serializer => \&_serialize_broadcast_timezone,
);

sub _serialize_broadcast_timezone { $_[0]->_serializer('broadcast_timezone') }


=head2 C<broadcaster>



The organization owning or operating the broadcast service.


A broadcaster should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=back

=cut

has broadcaster => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'broadcaster',
    json_ld_serializer => \&_serialize_broadcaster,
);

sub _serialize_broadcaster { $_[0]->_serializer('broadcaster') }


=head2 C<parent_service>

C<parentService>

A broadcast service to which the broadcast service may belong to such as
regional variations of a national channel.


A parent_service should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::BroadcastService']>

=back

=cut

has parent_service => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'parentService',
    json_ld_serializer => \&_serialize_parent_service,
);

sub _serialize_parent_service { $_[0]->_serializer('parent_service') }


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
    json_ld   => 'videoFormat',
    json_ld_serializer => \&_serialize_video_format,
);

sub _serialize_video_format { $_[0]->_serializer('video_format') }




around json_ld_type => sub { return 'BroadcastService' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
       'area' => \&_serialize_area,
       'broadcastAffiliateOf' => \&_serialize_broadcast_affiliate_of,
       'broadcastDisplayName' => \&_serialize_broadcast_display_name,
       'broadcastTimezone' => \&_serialize_broadcast_timezone,
       'broadcaster' => \&_serialize_broadcaster,
       'parentService' => \&_serialize_parent_service,
       'videoFormat' => \&_serialize_video_format,
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::Service>

=cut

1;
