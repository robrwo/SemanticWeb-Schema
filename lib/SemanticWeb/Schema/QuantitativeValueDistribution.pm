use utf8;

package SemanticWeb::Schema::QuantitativeValueDistribution;

# ABSTRACT: A statistical distribution of values.

use Moo;

extends qw/ SemanticWeb::Schema::StructuredValue /;


use MooX::JSON_LD 'QuantitativeValueDistribution';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.7.0';

=encoding utf8

=head1 DESCRIPTION

A statistical distribution of values.




=head1 ATTRIBUTES


=head2 C<duration>



=begin html

The duration of the item (movie, audio recording, event, etc.) in <a
href="http://en.wikipedia.org/wiki/ISO_8601">ISO 8601 date format</a>.

=end html


A duration should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Duration']>

=back

=cut

has duration => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'duration',
);


=head2 C<median>



The median value.


A median should be one of the following types:

=over

=item C<Num>

=back

=cut

has median => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'median',
);


=head2 C<percentile10>



The 10th percentile value.


A percentile10 should be one of the following types:

=over

=item C<Num>

=back

=cut

has percentile10 => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'percentile10',
);


=head2 C<percentile25>



The 25th percentile value.


A percentile25 should be one of the following types:

=over

=item C<Num>

=back

=cut

has percentile25 => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'percentile25',
);


=head2 C<percentile75>



The 75th percentile value.


A percentile75 should be one of the following types:

=over

=item C<Num>

=back

=cut

has percentile75 => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'percentile75',
);


=head2 C<percentile90>



The 90th percentile value.


A percentile90 should be one of the following types:

=over

=item C<Num>

=back

=cut

has percentile90 => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'percentile90',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::StructuredValue>

=cut

1;
