use utf8;

package SemanticWeb::Schema::QuantitativeValueDistribution;

# ABSTRACT: A statistical distribution of values.

use Moo;

extends qw/ SemanticWeb::Schema::StructuredValue /;


use MooX::JSON_LD 'QuantitativeValueDistribution';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v9.0.0';

=encoding utf8

=head1 DESCRIPTION

A statistical distribution of values.




=head1 ATTRIBUTES


=head2 C<duration>



=begin html

<p>The duration of the item (movie, audio recording, event, etc.) in <a
href="http://en.wikipedia.org/wiki/ISO_8601">ISO 8601 date format</a>.<p>

=end html


A duration should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Duration']>

=back

=head2 C<_has_duration>

A predicate for the L</duration> attribute.

=cut

has duration => (
    is        => 'rw',
    predicate => '_has_duration',
    json_ld   => 'duration',
);


=head2 C<median>



The median value.


A median should be one of the following types:

=over

=item C<Num>

=back

=head2 C<_has_median>

A predicate for the L</median> attribute.

=cut

has median => (
    is        => 'rw',
    predicate => '_has_median',
    json_ld   => 'median',
);


=head2 C<percentile10>



The 10th percentile value.


A percentile10 should be one of the following types:

=over

=item C<Num>

=back

=head2 C<_has_percentile10>

A predicate for the L</percentile10> attribute.

=cut

has percentile10 => (
    is        => 'rw',
    predicate => '_has_percentile10',
    json_ld   => 'percentile10',
);


=head2 C<percentile25>



The 25th percentile value.


A percentile25 should be one of the following types:

=over

=item C<Num>

=back

=head2 C<_has_percentile25>

A predicate for the L</percentile25> attribute.

=cut

has percentile25 => (
    is        => 'rw',
    predicate => '_has_percentile25',
    json_ld   => 'percentile25',
);


=head2 C<percentile75>



The 75th percentile value.


A percentile75 should be one of the following types:

=over

=item C<Num>

=back

=head2 C<_has_percentile75>

A predicate for the L</percentile75> attribute.

=cut

has percentile75 => (
    is        => 'rw',
    predicate => '_has_percentile75',
    json_ld   => 'percentile75',
);


=head2 C<percentile90>



The 90th percentile value.


A percentile90 should be one of the following types:

=over

=item C<Num>

=back

=head2 C<_has_percentile90>

A predicate for the L</percentile90> attribute.

=cut

has percentile90 => (
    is        => 'rw',
    predicate => '_has_percentile90',
    json_ld   => 'percentile90',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::StructuredValue>

=cut

1;
