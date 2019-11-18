use utf8;

package SemanticWeb::Schema::Vehicle;

# ABSTRACT: A vehicle is a device that is designed or used to transport people or cargo over land

use Moo;

extends qw/ SemanticWeb::Schema::Product /;


use MooX::JSON_LD 'Vehicle';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v5.0.2';

=encoding utf8

=head1 DESCRIPTION

A vehicle is a device that is designed or used to transport people or cargo
over land, water, air, or through space.




=head1 ATTRIBUTES


=head2 C<acceleration_time>

C<accelerationTime>

=begin html

<p>The time needed to accelerate the vehicle from a given start velocity to
a given target velocity.<br/><br/> Typical unit code(s): SEC for
seconds<br/><br/> <ul> <li>Note: There are unfortunately no standard unit
codes for seconds/0..100 km/h or seconds/0..60 mph. Simply use "SEC" for
seconds and indicate the velocities in the <a class="localLink"
href="http://schema.org/name">name</a> of the <a class="localLink"
href="http://schema.org/QuantitativeValue">QuantitativeValue</a>, or use <a
class="localLink"
href="http://schema.org/valueReference">valueReference</a> with a <a
class="localLink"
href="http://schema.org/QuantitativeValue">QuantitativeValue</a> of 0..60
mph or 0..100 km/h to specify the reference speeds.</li> </ul> <p>

=end html


A acceleration_time should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=back

=head2 C<_has_acceleration_time>

A predicate for the L</acceleration_time> attribute.

=cut

has acceleration_time => (
    is        => 'rw',
    predicate => '_has_acceleration_time',
    json_ld   => 'accelerationTime',
);


=head2 C<body_type>

C<bodyType>

Indicates the design and body style of the vehicle (e.g. station wagon,
hatchback, etc.).


A body_type should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QualitativeValue']>

=item C<Str>

=back

=head2 C<_has_body_type>

A predicate for the L</body_type> attribute.

=cut

has body_type => (
    is        => 'rw',
    predicate => '_has_body_type',
    json_ld   => 'bodyType',
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


=head2 C<cargo_volume>

C<cargoVolume>

=begin html

<p>The available volume for cargo or luggage. For automobiles, this is
usually the trunk volume.<br/><br/> Typical unit code(s): LTR for liters,
FTQ for cubic foot/feet<br/><br/> Note: You can use <a class="localLink"
href="http://schema.org/minValue">minValue</a> and <a class="localLink"
href="http://schema.org/maxValue">maxValue</a> to indicate ranges.<p>

=end html


A cargo_volume should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=back

=head2 C<_has_cargo_volume>

A predicate for the L</cargo_volume> attribute.

=cut

has cargo_volume => (
    is        => 'rw',
    predicate => '_has_cargo_volume',
    json_ld   => 'cargoVolume',
);


=head2 C<date_vehicle_first_registered>

C<dateVehicleFirstRegistered>

The date of the first registration of the vehicle with the respective
public authorities.


A date_vehicle_first_registered should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_date_vehicle_first_registered>

A predicate for the L</date_vehicle_first_registered> attribute.

=cut

has date_vehicle_first_registered => (
    is        => 'rw',
    predicate => '_has_date_vehicle_first_registered',
    json_ld   => 'dateVehicleFirstRegistered',
);


=head2 C<drive_wheel_configuration>

C<driveWheelConfiguration>

The drive wheel configuration, i.e. which roadwheels will receive torque
from the vehicle's engine via the drivetrain.


A drive_wheel_configuration should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::DriveWheelConfigurationValue']>

=item C<Str>

=back

=head2 C<_has_drive_wheel_configuration>

A predicate for the L</drive_wheel_configuration> attribute.

=cut

has drive_wheel_configuration => (
    is        => 'rw',
    predicate => '_has_drive_wheel_configuration',
    json_ld   => 'driveWheelConfiguration',
);


=head2 C<emissions_co2>

C<emissionsCO2>

The CO2 emissions in g/km. When used in combination with a
QuantitativeValue, put "g/km" into the unitText property of that value,
since there is no UN/CEFACT Common Code for "g/km".


A emissions_co2 should be one of the following types:

=over

=item C<Num>

=back

=head2 C<_has_emissions_co2>

A predicate for the L</emissions_co2> attribute.

=cut

has emissions_co2 => (
    is        => 'rw',
    predicate => '_has_emissions_co2',
    json_ld   => 'emissionsCO2',
);


=head2 C<fuel_capacity>

C<fuelCapacity>

=begin html

<p>The capacity of the fuel tank or in the case of electric cars, the
battery. If there are multiple components for storage, this should indicate
the total of all storage of the same type.<br/><br/> Typical unit code(s):
LTR for liters, GLL of US gallons, GLI for UK / imperial gallons, AMH for
ampere-hours (for electrical vehicles).<p>

=end html


A fuel_capacity should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=back

=head2 C<_has_fuel_capacity>

A predicate for the L</fuel_capacity> attribute.

=cut

has fuel_capacity => (
    is        => 'rw',
    predicate => '_has_fuel_capacity',
    json_ld   => 'fuelCapacity',
);


=head2 C<fuel_consumption>

C<fuelConsumption>

=begin html

<p>The amount of fuel consumed for traveling a particular distance or
temporal duration with the given vehicle (e.g. liters per 100
km).<br/><br/> <ul> <li>Note 1: There are unfortunately no standard unit
codes for liters per 100 km. Use <a class="localLink"
href="http://schema.org/unitText">unitText</a> to indicate the unit of
measurement, e.g. L/100 km.</li> <li>Note 2: There are two ways of
indicating the fuel consumption, <a class="localLink"
href="http://schema.org/fuelConsumption">fuelConsumption</a> (e.g. 8 liters
per 100 km) and <a class="localLink"
href="http://schema.org/fuelEfficiency">fuelEfficiency</a> (e.g. 30 miles
per gallon). They are reciprocal.</li> <li>Note 3: Often, the absolute
value is useful only when related to driving speed ("at 80 km/h") or usage
pattern ("city traffic"). You can use <a class="localLink"
href="http://schema.org/valueReference">valueReference</a> to link the
value for the fuel consumption to another value.</li> </ul> <p>

=end html


A fuel_consumption should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=back

=head2 C<_has_fuel_consumption>

A predicate for the L</fuel_consumption> attribute.

=cut

has fuel_consumption => (
    is        => 'rw',
    predicate => '_has_fuel_consumption',
    json_ld   => 'fuelConsumption',
);


=head2 C<fuel_efficiency>

C<fuelEfficiency>

=begin html

<p>The distance traveled per unit of fuel used; most commonly miles per
gallon (mpg) or kilometers per liter (km/L).<br/><br/> <ul> <li>Note 1:
There are unfortunately no standard unit codes for miles per gallon or
kilometers per liter. Use <a class="localLink"
href="http://schema.org/unitText">unitText</a> to indicate the unit of
measurement, e.g. mpg or km/L.</li> <li>Note 2: There are two ways of
indicating the fuel consumption, <a class="localLink"
href="http://schema.org/fuelConsumption">fuelConsumption</a> (e.g. 8 liters
per 100 km) and <a class="localLink"
href="http://schema.org/fuelEfficiency">fuelEfficiency</a> (e.g. 30 miles
per gallon). They are reciprocal.</li> <li>Note 3: Often, the absolute
value is useful only when related to driving speed ("at 80 km/h") or usage
pattern ("city traffic"). You can use <a class="localLink"
href="http://schema.org/valueReference">valueReference</a> to link the
value for the fuel economy to another value.</li> </ul> <p>

=end html


A fuel_efficiency should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=back

=head2 C<_has_fuel_efficiency>

A predicate for the L</fuel_efficiency> attribute.

=cut

has fuel_efficiency => (
    is        => 'rw',
    predicate => '_has_fuel_efficiency',
    json_ld   => 'fuelEfficiency',
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


=head2 C<known_vehicle_damages>

C<knownVehicleDamages>

A textual description of known damages, both repaired and unrepaired.


A known_vehicle_damages should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_known_vehicle_damages>

A predicate for the L</known_vehicle_damages> attribute.

=cut

has known_vehicle_damages => (
    is        => 'rw',
    predicate => '_has_known_vehicle_damages',
    json_ld   => 'knownVehicleDamages',
);


=head2 C<meets_emission_standard>

C<meetsEmissionStandard>

Indicates that the vehicle meets the respective emission standard.


A meets_emission_standard should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QualitativeValue']>

=item C<Str>

=back

=head2 C<_has_meets_emission_standard>

A predicate for the L</meets_emission_standard> attribute.

=cut

has meets_emission_standard => (
    is        => 'rw',
    predicate => '_has_meets_emission_standard',
    json_ld   => 'meetsEmissionStandard',
);


=head2 C<mileage_from_odometer>

C<mileageFromOdometer>

=begin html

<p>The total distance travelled by the particular vehicle since its initial
production, as read from its odometer.<br/><br/> Typical unit code(s): KMT
for kilometers, SMI for statute miles<p>

=end html


A mileage_from_odometer should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=back

=head2 C<_has_mileage_from_odometer>

A predicate for the L</mileage_from_odometer> attribute.

=cut

has mileage_from_odometer => (
    is        => 'rw',
    predicate => '_has_mileage_from_odometer',
    json_ld   => 'mileageFromOdometer',
);


=head2 C<model_date>

C<modelDate>

The release date of a vehicle model (often used to differentiate versions
of the same make and model).


A model_date should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_model_date>

A predicate for the L</model_date> attribute.

=cut

has model_date => (
    is        => 'rw',
    predicate => '_has_model_date',
    json_ld   => 'modelDate',
);


=head2 C<number_of_airbags>

C<numberOfAirbags>

The number or type of airbags in the vehicle.


A number_of_airbags should be one of the following types:

=over

=item C<Num>

=item C<Str>

=back

=head2 C<_has_number_of_airbags>

A predicate for the L</number_of_airbags> attribute.

=cut

has number_of_airbags => (
    is        => 'rw',
    predicate => '_has_number_of_airbags',
    json_ld   => 'numberOfAirbags',
);


=head2 C<number_of_axles>

C<numberOfAxles>

=begin html

<p>The number of axles.<br/><br/> Typical unit code(s): C62<p>

=end html


A number_of_axles should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=item C<Num>

=back

=head2 C<_has_number_of_axles>

A predicate for the L</number_of_axles> attribute.

=cut

has number_of_axles => (
    is        => 'rw',
    predicate => '_has_number_of_axles',
    json_ld   => 'numberOfAxles',
);


=head2 C<number_of_doors>

C<numberOfDoors>

=begin html

<p>The number of doors.<br/><br/> Typical unit code(s): C62<p>

=end html


A number_of_doors should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=item C<Num>

=back

=head2 C<_has_number_of_doors>

A predicate for the L</number_of_doors> attribute.

=cut

has number_of_doors => (
    is        => 'rw',
    predicate => '_has_number_of_doors',
    json_ld   => 'numberOfDoors',
);


=head2 C<number_of_forward_gears>

C<numberOfForwardGears>

=begin html

<p>The total number of forward gears available for the transmission system
of the vehicle.<br/><br/> Typical unit code(s): C62<p>

=end html


A number_of_forward_gears should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=item C<Num>

=back

=head2 C<_has_number_of_forward_gears>

A predicate for the L</number_of_forward_gears> attribute.

=cut

has number_of_forward_gears => (
    is        => 'rw',
    predicate => '_has_number_of_forward_gears',
    json_ld   => 'numberOfForwardGears',
);


=head2 C<number_of_previous_owners>

C<numberOfPreviousOwners>

=begin html

<p>The number of owners of the vehicle, including the current
one.<br/><br/> Typical unit code(s): C62<p>

=end html


A number_of_previous_owners should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=item C<Num>

=back

=head2 C<_has_number_of_previous_owners>

A predicate for the L</number_of_previous_owners> attribute.

=cut

has number_of_previous_owners => (
    is        => 'rw',
    predicate => '_has_number_of_previous_owners',
    json_ld   => 'numberOfPreviousOwners',
);


=head2 C<payload>



=begin html

<p>The permitted weight of passengers and cargo, EXCLUDING the weight of
the empty vehicle.<br/><br/> Typical unit code(s): KGM for kilogram, LBR
for pound<br/><br/> <ul> <li>Note 1: Many databases specify the permitted
TOTAL weight instead, which is the sum of <a class="localLink"
href="http://schema.org/weight">weight</a> and <a class="localLink"
href="http://schema.org/payload">payload</a></li> <li>Note 2: You can
indicate additional information in the <a class="localLink"
href="http://schema.org/name">name</a> of the <a class="localLink"
href="http://schema.org/QuantitativeValue">QuantitativeValue</a> node.</li>
<li>Note 3: You may also link to a <a class="localLink"
href="http://schema.org/QualitativeValue">QualitativeValue</a> node that
provides additional information using <a class="localLink"
href="http://schema.org/valueReference">valueReference</a>.</li> <li>Note
4: Note that you can use <a class="localLink"
href="http://schema.org/minValue">minValue</a> and <a class="localLink"
href="http://schema.org/maxValue">maxValue</a> to indicate ranges.</li>
</ul> <p>

=end html


A payload should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=back

=head2 C<_has_payload>

A predicate for the L</payload> attribute.

=cut

has payload => (
    is        => 'rw',
    predicate => '_has_payload',
    json_ld   => 'payload',
);


=head2 C<production_date>

C<productionDate>

The date of production of the item, e.g. vehicle.


A production_date should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_production_date>

A predicate for the L</production_date> attribute.

=cut

has production_date => (
    is        => 'rw',
    predicate => '_has_production_date',
    json_ld   => 'productionDate',
);


=head2 C<purchase_date>

C<purchaseDate>

The date the item e.g. vehicle was purchased by the current owner.


A purchase_date should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_purchase_date>

A predicate for the L</purchase_date> attribute.

=cut

has purchase_date => (
    is        => 'rw',
    predicate => '_has_purchase_date',
    json_ld   => 'purchaseDate',
);


=head2 C<seating_capacity>

C<seatingCapacity>

=begin html

<p>The number of persons that can be seated (e.g. in a vehicle), both in
terms of the physical space available, and in terms of limitations set by
law.<br/><br/> Typical unit code(s): C62 for persons<p>

=end html


A seating_capacity should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=item C<Num>

=back

=head2 C<_has_seating_capacity>

A predicate for the L</seating_capacity> attribute.

=cut

has seating_capacity => (
    is        => 'rw',
    predicate => '_has_seating_capacity',
    json_ld   => 'seatingCapacity',
);


=head2 C<speed>



=begin html

<p>The speed range of the vehicle. If the vehicle is powered by an engine,
the upper limit of the speed range (indicated by <a class="localLink"
href="http://schema.org/maxValue">maxValue</a> should be the maximum speed
achievable under regular conditions.<br/><br/> Typical unit code(s): KMH
for km/h, HM for mile per hour (0.447 04 m/s), KNT for knot<br/><br/> *Note
1: Use <a class="localLink" href="http://schema.org/minValue">minValue</a>
and <a class="localLink" href="http://schema.org/maxValue">maxValue</a> to
indicate the range. Typically, the minimal value is zero. * Note 2: There
are many different ways of measuring the speed range. You can link to
information about how the given value has been determined using the <a
class="localLink"
href="http://schema.org/valueReference">valueReference</a> property.<p>

=end html


A speed should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=back

=head2 C<_has_speed>

A predicate for the L</speed> attribute.

=cut

has speed => (
    is        => 'rw',
    predicate => '_has_speed',
    json_ld   => 'speed',
);


=head2 C<steering_position>

C<steeringPosition>

The position of the steering wheel or similar device (mostly for cars).


A steering_position should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::SteeringPositionValue']>

=back

=head2 C<_has_steering_position>

A predicate for the L</steering_position> attribute.

=cut

has steering_position => (
    is        => 'rw',
    predicate => '_has_steering_position',
    json_ld   => 'steeringPosition',
);


=head2 C<tongue_weight>

C<tongueWeight>

=begin html

<p>The permitted vertical load (TWR) of a trailer attached to the vehicle.
Also referred to as Tongue Load Rating (TLR) or Vertical Load Rating
(VLR)<br/><br/> Typical unit code(s): KGM for kilogram, LBR for
pound<br/><br/> <ul> <li>Note 1: You can indicate additional information in
the <a class="localLink" href="http://schema.org/name">name</a> of the <a
class="localLink"
href="http://schema.org/QuantitativeValue">QuantitativeValue</a> node.</li>
<li>Note 2: You may also link to a <a class="localLink"
href="http://schema.org/QualitativeValue">QualitativeValue</a> node that
provides additional information using <a class="localLink"
href="http://schema.org/valueReference">valueReference</a>.</li> <li>Note
3: Note that you can use <a class="localLink"
href="http://schema.org/minValue">minValue</a> and <a class="localLink"
href="http://schema.org/maxValue">maxValue</a> to indicate ranges.</li>
</ul> <p>

=end html


A tongue_weight should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=back

=head2 C<_has_tongue_weight>

A predicate for the L</tongue_weight> attribute.

=cut

has tongue_weight => (
    is        => 'rw',
    predicate => '_has_tongue_weight',
    json_ld   => 'tongueWeight',
);


=head2 C<trailer_weight>

C<trailerWeight>

=begin html

<p>The permitted weight of a trailer attached to the vehicle.<br/><br/>
Typical unit code(s): KGM for kilogram, LBR for pound * Note 1: You can
indicate additional information in the <a class="localLink"
href="http://schema.org/name">name</a> of the <a class="localLink"
href="http://schema.org/QuantitativeValue">QuantitativeValue</a> node. *
Note 2: You may also link to a <a class="localLink"
href="http://schema.org/QualitativeValue">QualitativeValue</a> node that
provides additional information using <a class="localLink"
href="http://schema.org/valueReference">valueReference</a>. * Note 3: Note
that you can use <a class="localLink"
href="http://schema.org/minValue">minValue</a> and <a class="localLink"
href="http://schema.org/maxValue">maxValue</a> to indicate ranges.<p>

=end html


A trailer_weight should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=back

=head2 C<_has_trailer_weight>

A predicate for the L</trailer_weight> attribute.

=cut

has trailer_weight => (
    is        => 'rw',
    predicate => '_has_trailer_weight',
    json_ld   => 'trailerWeight',
);


=head2 C<vehicle_configuration>

C<vehicleConfiguration>

A short text indicating the configuration of the vehicle, e.g. '5dr
hatchback ST 2.5 MT 225 hp' or 'limited edition'.


A vehicle_configuration should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_vehicle_configuration>

A predicate for the L</vehicle_configuration> attribute.

=cut

has vehicle_configuration => (
    is        => 'rw',
    predicate => '_has_vehicle_configuration',
    json_ld   => 'vehicleConfiguration',
);


=head2 C<vehicle_engine>

C<vehicleEngine>

Information about the engine or engines of the vehicle.


A vehicle_engine should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::EngineSpecification']>

=back

=head2 C<_has_vehicle_engine>

A predicate for the L</vehicle_engine> attribute.

=cut

has vehicle_engine => (
    is        => 'rw',
    predicate => '_has_vehicle_engine',
    json_ld   => 'vehicleEngine',
);


=head2 C<vehicle_identification_number>

C<vehicleIdentificationNumber>

The Vehicle Identification Number (VIN) is a unique serial number used by
the automotive industry to identify individual motor vehicles.


A vehicle_identification_number should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_vehicle_identification_number>

A predicate for the L</vehicle_identification_number> attribute.

=cut

has vehicle_identification_number => (
    is        => 'rw',
    predicate => '_has_vehicle_identification_number',
    json_ld   => 'vehicleIdentificationNumber',
);


=head2 C<vehicle_interior_color>

C<vehicleInteriorColor>

The color or color combination of the interior of the vehicle.


A vehicle_interior_color should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_vehicle_interior_color>

A predicate for the L</vehicle_interior_color> attribute.

=cut

has vehicle_interior_color => (
    is        => 'rw',
    predicate => '_has_vehicle_interior_color',
    json_ld   => 'vehicleInteriorColor',
);


=head2 C<vehicle_interior_type>

C<vehicleInteriorType>

The type or material of the interior of the vehicle (e.g. synthetic fabric,
leather, wood, etc.). While most interior types are characterized by the
material used, an interior type can also be based on vehicle usage or
target audience.


A vehicle_interior_type should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_vehicle_interior_type>

A predicate for the L</vehicle_interior_type> attribute.

=cut

has vehicle_interior_type => (
    is        => 'rw',
    predicate => '_has_vehicle_interior_type',
    json_ld   => 'vehicleInteriorType',
);


=head2 C<vehicle_model_date>

C<vehicleModelDate>

The release date of a vehicle model (often used to differentiate versions
of the same make and model).


A vehicle_model_date should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_vehicle_model_date>

A predicate for the L</vehicle_model_date> attribute.

=cut

has vehicle_model_date => (
    is        => 'rw',
    predicate => '_has_vehicle_model_date',
    json_ld   => 'vehicleModelDate',
);


=head2 C<vehicle_seating_capacity>

C<vehicleSeatingCapacity>

=begin html

<p>The number of passengers that can be seated in the vehicle, both in
terms of the physical space available, and in terms of limitations set by
law.<br/><br/> Typical unit code(s): C62 for persons.<p>

=end html


A vehicle_seating_capacity should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=item C<Num>

=back

=head2 C<_has_vehicle_seating_capacity>

A predicate for the L</vehicle_seating_capacity> attribute.

=cut

has vehicle_seating_capacity => (
    is        => 'rw',
    predicate => '_has_vehicle_seating_capacity',
    json_ld   => 'vehicleSeatingCapacity',
);


=head2 C<vehicle_special_usage>

C<vehicleSpecialUsage>

Indicates whether the vehicle has been used for special purposes, like
commercial rental, driving school, or as a taxi. The legislation in many
countries requires this information to be revealed when offering a car for
sale.


A vehicle_special_usage should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::CarUsageType']>

=item C<Str>

=back

=head2 C<_has_vehicle_special_usage>

A predicate for the L</vehicle_special_usage> attribute.

=cut

has vehicle_special_usage => (
    is        => 'rw',
    predicate => '_has_vehicle_special_usage',
    json_ld   => 'vehicleSpecialUsage',
);


=head2 C<vehicle_transmission>

C<vehicleTransmission>

The type of component used for transmitting the power from a rotating power
source to the wheels or other relevant component(s) ("gearbox" for cars).


A vehicle_transmission should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QualitativeValue']>

=item C<Str>

=back

=head2 C<_has_vehicle_transmission>

A predicate for the L</vehicle_transmission> attribute.

=cut

has vehicle_transmission => (
    is        => 'rw',
    predicate => '_has_vehicle_transmission',
    json_ld   => 'vehicleTransmission',
);


=head2 C<weight_total>

C<weightTotal>

=begin html

<p>The permitted total weight of the loaded vehicle, including passengers
and cargo and the weight of the empty vehicle.<br/><br/> Typical unit
code(s): KGM for kilogram, LBR for pound<br/><br/> <ul> <li>Note 1: You can
indicate additional information in the <a class="localLink"
href="http://schema.org/name">name</a> of the <a class="localLink"
href="http://schema.org/QuantitativeValue">QuantitativeValue</a> node.</li>
<li>Note 2: You may also link to a <a class="localLink"
href="http://schema.org/QualitativeValue">QualitativeValue</a> node that
provides additional information using <a class="localLink"
href="http://schema.org/valueReference">valueReference</a>.</li> <li>Note
3: Note that you can use <a class="localLink"
href="http://schema.org/minValue">minValue</a> and <a class="localLink"
href="http://schema.org/maxValue">maxValue</a> to indicate ranges.</li>
</ul> <p>

=end html


A weight_total should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=back

=head2 C<_has_weight_total>

A predicate for the L</weight_total> attribute.

=cut

has weight_total => (
    is        => 'rw',
    predicate => '_has_weight_total',
    json_ld   => 'weightTotal',
);


=head2 C<wheelbase>



=begin html

<p>The distance between the centers of the front and rear wheels.<br/><br/>
Typical unit code(s): CMT for centimeters, MTR for meters, INH for inches,
FOT for foot/feet<p>

=end html


A wheelbase should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=back

=head2 C<_has_wheelbase>

A predicate for the L</wheelbase> attribute.

=cut

has wheelbase => (
    is        => 'rw',
    predicate => '_has_wheelbase',
    json_ld   => 'wheelbase',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Product>

=cut

1;
