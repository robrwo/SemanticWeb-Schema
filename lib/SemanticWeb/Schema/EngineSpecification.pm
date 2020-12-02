use utf8;

package SemanticWeb::Schema::EngineSpecification;

# ABSTRACT: Information about the engine of the vehicle

use Moo;

extends qw/ SemanticWeb::Schema::StructuredValue /;


use MooX::JSON_LD 'EngineSpecification';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v11.0.1';

=encoding utf8

=head1 DESCRIPTION

Information about the engine of the vehicle. A vehicle can have multiple
engines represented by multiple engine specification entities.




=head1 ATTRIBUTES


=head2 C<engine_displacement>

C<engineDisplacement>

The volume swept by all of the pistons inside the cylinders of an internal
combustion engine in a single movement. \n\nTypical unit code(s): CMQ for
cubic centimeter, LTR for liters, INQ for cubic inches\n* Note 1: You can
link to information about how the given value has been determined using the
[[valueReference]] property.\n* Note 2: You can use [[minValue]] and
[[maxValue]] to indicate ranges.


A engine_displacement should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=back

=head2 C<_has_engine_displacement>

A predicate for the L</engine_displacement> attribute.

=cut

has engine_displacement => (
    is        => 'rw',
    predicate => '_has_engine_displacement',
    json_ld   => 'engineDisplacement',
);


=head2 C<engine_power>

C<enginePower>

The power of the vehicle's engine. Typical unit code(s): KWT for kilowatt,
BHP for brake horsepower, N12 for metric horsepower (PS, with 1 PS =
735,49875 W)\n\n* Note 1: There are many different ways of measuring an
engine's power. For an overview, see
[http://en.wikipedia.org/wiki/Horsepower#Engine_power_test_codes](http://en
.wikipedia.org/wiki/Horsepower#Engine_power_test_codes).\n* Note 2: You can
link to information about how the given value has been determined using the
[[valueReference]] property.\n* Note 3: You can use [[minValue]] and
[[maxValue]] to indicate ranges.


A engine_power should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=back

=head2 C<_has_engine_power>

A predicate for the L</engine_power> attribute.

=cut

has engine_power => (
    is        => 'rw',
    predicate => '_has_engine_power',
    json_ld   => 'enginePower',
);


=head2 C<engine_type>

C<engineType>

The type of engine or engines powering the vehicle.


A engine_type should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QualitativeValue']>

=item C<Str>

=back

=head2 C<_has_engine_type>

A predicate for the L</engine_type> attribute.

=cut

has engine_type => (
    is        => 'rw',
    predicate => '_has_engine_type',
    json_ld   => 'engineType',
);


=head2 C<fuel_type>

C<fuelType>

The type of fuel suitable for the engine or engines of the vehicle. If the
vehicle has only one engine, this property can be attached directly to the
vehicle.


A fuel_type should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QualitativeValue']>

=item C<Str>

=back

=head2 C<_has_fuel_type>

A predicate for the L</fuel_type> attribute.

=cut

has fuel_type => (
    is        => 'rw',
    predicate => '_has_fuel_type',
    json_ld   => 'fuelType',
);


=head2 C<torque>



The torque (turning force) of the vehicle's engine.\n\nTypical unit
code(s): NU for newton metre (N m), F17 for pound-force per foot, or F48
for pound-force per inch\n\n* Note 1: You can link to information about how
the given value has been determined (e.g. reference RPM) using the
[[valueReference]] property.\n* Note 2: You can use [[minValue]] and
[[maxValue]] to indicate ranges.


A torque should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=back

=head2 C<_has_torque>

A predicate for the L</torque> attribute.

=cut

has torque => (
    is        => 'rw',
    predicate => '_has_torque',
    json_ld   => 'torque',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::StructuredValue>

=cut

1;
