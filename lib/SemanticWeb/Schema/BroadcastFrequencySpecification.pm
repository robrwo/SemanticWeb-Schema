use utf8;

package SemanticWeb::Schema::BroadcastFrequencySpecification;

# ABSTRACT: The frequency in MHz and the modulation used for a particular BroadcastService.

use Moo;

extends qw/ SemanticWeb::Schema::Intangible /;


use MooX::JSON_LD 'BroadcastFrequencySpecification';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v5.0.1';

=encoding utf8

=head1 DESCRIPTION

The frequency in MHz and the modulation used for a particular
BroadcastService.




=head1 ATTRIBUTES


=head2 C<broadcast_frequency_value>

C<broadcastFrequencyValue>

The frequency in MHz for a particular broadcast.


A broadcast_frequency_value should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=item C<Num>

=back

=head2 C<_has_broadcast_frequency_value>

A predicate for the L</broadcast_frequency_value> attribute.

=cut

has broadcast_frequency_value => (
    is        => 'rw',
    predicate => '_has_broadcast_frequency_value',
    json_ld   => 'broadcastFrequencyValue',
);


=head2 C<broadcast_signal_modulation>

C<broadcastSignalModulation>

The modulation (e.g. FM, AM, etc) used by a particular broadcast service


A broadcast_signal_modulation should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QualitativeValue']>

=item C<Str>

=back

=head2 C<_has_broadcast_signal_modulation>

A predicate for the L</broadcast_signal_modulation> attribute.

=cut

has broadcast_signal_modulation => (
    is        => 'rw',
    predicate => '_has_broadcast_signal_modulation',
    json_ld   => 'broadcastSignalModulation',
);


=head2 C<broadcast_sub_channel>

C<broadcastSubChannel>

The subchannel used for the broadcast.


A broadcast_sub_channel should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_broadcast_sub_channel>

A predicate for the L</broadcast_sub_channel> attribute.

=cut

has broadcast_sub_channel => (
    is        => 'rw',
    predicate => '_has_broadcast_sub_channel',
    json_ld   => 'broadcastSubChannel',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Intangible>

=cut

1;
