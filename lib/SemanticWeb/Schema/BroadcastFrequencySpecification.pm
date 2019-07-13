use utf8;

package SemanticWeb::Schema::BroadcastFrequencySpecification;

# ABSTRACT: The frequency in MHz and the modulation used for a particular BroadcastService.

use Moo;

extends qw/ SemanticWeb::Schema::Intangible /;


use MooX::JSON_LD 'BroadcastFrequencySpecification';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.7.1';

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

=item C<Num>

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=back

=cut

has broadcast_frequency_value => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'broadcastFrequencyValue',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Intangible>

=cut

1;
