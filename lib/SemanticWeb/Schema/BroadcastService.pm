use utf8;

package SemanticWeb::Schema::BroadcastService;

# ABSTRACT: A delivery service through which content is provided via broadcast over the air or online.

use Moo;

extends qw/ SemanticWeb::Schema::Service /;


use MooX::JSON_LD 'BroadcastService';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v6.0.2';

=encoding utf8

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

=head2 C<_has_area>

A predicate for the L</area> attribute.

=cut

has area => (
    is        => 'rw',
    predicate => '_has_area',
    json_ld   => 'area',
);


=head2 C<broadcast_affiliate_of>

C<broadcastAffiliateOf>

The media network(s) whose content is broadcast on this station.


A broadcast_affiliate_of should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=back

=head2 C<_has_broadcast_affiliate_of>

A predicate for the L</broadcast_affiliate_of> attribute.

=cut

has broadcast_affiliate_of => (
    is        => 'rw',
    predicate => '_has_broadcast_affiliate_of',
    json_ld   => 'broadcastAffiliateOf',
);


=head2 C<broadcast_display_name>

C<broadcastDisplayName>

The name displayed in the channel guide. For many US affiliates, it is the
network name.


A broadcast_display_name should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_broadcast_display_name>

A predicate for the L</broadcast_display_name> attribute.

=cut

has broadcast_display_name => (
    is        => 'rw',
    predicate => '_has_broadcast_display_name',
    json_ld   => 'broadcastDisplayName',
);


=head2 C<broadcast_frequency>

C<broadcastFrequency>

The frequency used for over-the-air broadcasts. Numeric values or simple
ranges e.g. 87-99. In addition a shortcut idiom is supported for frequences
of AM and FM radio channels, e.g. "87 FM".


A broadcast_frequency should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::BroadcastFrequencySpecification']>

=item C<Str>

=back

=head2 C<_has_broadcast_frequency>

A predicate for the L</broadcast_frequency> attribute.

=cut

has broadcast_frequency => (
    is        => 'rw',
    predicate => '_has_broadcast_frequency',
    json_ld   => 'broadcastFrequency',
);


=head2 C<broadcast_timezone>

C<broadcastTimezone>

=begin html

<p>The timezone in <a href="http://en.wikipedia.org/wiki/ISO_8601">ISO 8601
format</a> for which the service bases its broadcasts<p>

=end html


A broadcast_timezone should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_broadcast_timezone>

A predicate for the L</broadcast_timezone> attribute.

=cut

has broadcast_timezone => (
    is        => 'rw',
    predicate => '_has_broadcast_timezone',
    json_ld   => 'broadcastTimezone',
);


=head2 C<broadcaster>



The organization owning or operating the broadcast service.


A broadcaster should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=back

=head2 C<_has_broadcaster>

A predicate for the L</broadcaster> attribute.

=cut

has broadcaster => (
    is        => 'rw',
    predicate => '_has_broadcaster',
    json_ld   => 'broadcaster',
);


=head2 C<call_sign>

C<callSign>

=begin html

<p>A <a href="https://en.wikipedia.org/wiki/Call_sign">callsign</a>, as
used in broadcasting and radio communications to identify people, radio and
TV stations, or vehicles.<p>

=end html


A call_sign should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_call_sign>

A predicate for the L</call_sign> attribute.

=cut

has call_sign => (
    is        => 'rw',
    predicate => '_has_call_sign',
    json_ld   => 'callSign',
);


=head2 C<has_broadcast_channel>

C<hasBroadcastChannel>

A broadcast channel of a broadcast service.


A has_broadcast_channel should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::BroadcastChannel']>

=back

=head2 C<_has_has_broadcast_channel>

A predicate for the L</has_broadcast_channel> attribute.

=cut

has has_broadcast_channel => (
    is        => 'rw',
    predicate => '_has_has_broadcast_channel',
    json_ld   => 'hasBroadcastChannel',
);


=head2 C<in_language>

C<inLanguage>

=begin html

<p>The language of the content or performance or used in an action. Please
use one of the language codes from the <a
href="http://tools.ietf.org/html/bcp47">IETF BCP 47 standard</a>. See also
<a class="localLink"
href="http://schema.org/availableLanguage">availableLanguage</a>.<p>

=end html


A in_language should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Language']>

=item C<Str>

=back

=head2 C<_has_in_language>

A predicate for the L</in_language> attribute.

=cut

has in_language => (
    is        => 'rw',
    predicate => '_has_in_language',
    json_ld   => 'inLanguage',
);


=head2 C<parent_service>

C<parentService>

A broadcast service to which the broadcast service may belong to such as
regional variations of a national channel.


A parent_service should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::BroadcastService']>

=back

=head2 C<_has_parent_service>

A predicate for the L</parent_service> attribute.

=cut

has parent_service => (
    is        => 'rw',
    predicate => '_has_parent_service',
    json_ld   => 'parentService',
);


=head2 C<video_format>

C<videoFormat>

The type of screening or video broadcast used (e.g. IMAX, 3D, SD, HD,
etc.).


A video_format should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_video_format>

A predicate for the L</video_format> attribute.

=cut

has video_format => (
    is        => 'rw',
    predicate => '_has_video_format',
    json_ld   => 'videoFormat',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Service>

=cut

1;
