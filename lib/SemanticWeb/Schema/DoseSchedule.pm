use utf8;

package SemanticWeb::Schema::DoseSchedule;

# ABSTRACT: A specific dosing schedule for a drug or supplement.

use Moo;

extends qw/ SemanticWeb::Schema::MedicalIntangible /;


use MooX::JSON_LD 'DoseSchedule';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.9.1';

=encoding utf8

=head1 DESCRIPTION

A specific dosing schedule for a drug or supplement.




=head1 ATTRIBUTES


=head2 C<dose_unit>

C<doseUnit>

The unit of the dose, e.g. 'mg'.


A dose_unit should be one of the following types:

=over

=item C<Str>

=back

=cut

has dose_unit => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'doseUnit',
);


=head2 C<dose_value>

C<doseValue>

The value of the dose, e.g. 500.


A dose_value should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QualitativeValue']>

=item C<Num>

=back

=cut

has dose_value => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'doseValue',
);


=head2 C<frequency>



How often the dose is taken, e.g. 'daily'.


A frequency should be one of the following types:

=over

=item C<Str>

=back

=cut

has frequency => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'frequency',
);


=head2 C<target_population>

C<targetPopulation>

Characteristics of the population for which this is intended, or which
typically uses it, e.g. 'adults'.


A target_population should be one of the following types:

=over

=item C<Str>

=back

=cut

has target_population => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'targetPopulation',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::MedicalIntangible>

=cut

1;
