package LDF::Schema::Vehicle;

# ABSTRACT: A vehicle is a device that is designed or used to transport people or cargo over land

use Moo;

extends qw/ LDF::Schema::Product /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A vehicle is a device that is designed or used to transport people or cargo
over land, water, air, or through space.



Note that this class was generated automatically from the following sources:

=over

=item L<http://schema.org/version/3.3/ext-meta.rdf>

=item L<http://schema.org/version/3.3/schema.rdf>

=back


=head1 ATTRIBUTES


=head2 C<cargo_volume>

C<cargoVolume>

=begin html

The available volume for cargo or luggage. For automobiles, this is usually
the trunk volume.</p> <p>Typical unit code(s): LTR for liters, FTQ for
cubic foot/feet</p> <p>Note: You can use <a class="localLink"
href="http://schema.org/minValue">minValue</a> and <a class="localLink"
href="http://schema.org/maxValue">maxValue</a> to indicate ranges.

=end html


A cargo_volume should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::QuantitativeValue']>

=back

=cut

has cargo_volume => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<date_vehicle_first_registered>

C<dateVehicleFirstRegistered>

The date of the first registration of the vehicle with the respective
public authorities.


A date_vehicle_first_registered should be one of the following types:

=over

=item C<Str>

=back

=cut

has date_vehicle_first_registered => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<drive_wheel_configuration>

C<driveWheelConfiguration>

The drive wheel configuration, i.e. which roadwheels will receive torque
from the vehicle's engine via the drivetrain.


A drive_wheel_configuration should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::DriveWheelConfigurationValue']>

=item C<Str>

=back

=cut

has drive_wheel_configuration => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<fuel_consumption>

C<fuelConsumption>

=begin html

<p>The amount of fuel consumed for traveling a particular distance or
temporal duration with the given vehicle (e.g. liters per 100 km).</p> <ul>
<li>Note 1: There are unfortunately no standard unit codes for liters per
100 km. Use <a class="localLink"
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
value for the fuel consumption to another value.</li> </ul> 

=end html


A fuel_consumption should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::QuantitativeValue']>

=back

=cut

has fuel_consumption => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<fuel_efficiency>

C<fuelEfficiency>

=begin html

<p>The distance traveled per unit of fuel used; most commonly miles per
gallon (mpg) or kilometers per liter (km/L).</p> <ul> <li>Note 1: There are
unfortunately no standard unit codes for miles per gallon or kilometers per
liter. Use <a class="localLink"
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
value for the fuel economy to another value.</li> </ul> 

=end html


A fuel_efficiency should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::QuantitativeValue']>

=back

=cut

has fuel_efficiency => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<fuel_type>

C<fuelType>

The type of fuel suitable for the engine or engines of the vehicle. If the
vehicle has only one engine, this property can be attached directly to the
vehicle.


A fuel_type should be one of the following types:

=over

=item C<Str>

=item C<InstanceOf['LDF::Schema::QualitativeValue']>

=back

=cut

has fuel_type => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<known_vehicle_damages>

C<knownVehicleDamages>

A textual description of known damages, both repaired and unrepaired.


A known_vehicle_damages should be one of the following types:

=over

=item C<Str>

=back

=cut

has known_vehicle_damages => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<mileage_from_odometer>

C<mileageFromOdometer>

=begin html

The total distance travelled by the particular vehicle since its initial
production, as read from its odometer.</p> <p>Typical unit code(s): KMT for
kilometers, SMI for statute miles

=end html


A mileage_from_odometer should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::QuantitativeValue']>

=back

=cut

has mileage_from_odometer => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<number_of_airbags>

C<numberOfAirbags>

The number or type of airbags in the vehicle.


A number_of_airbags should be one of the following types:

=over

=item C<Str>

=item C<Num>

=back

=cut

has number_of_airbags => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<number_of_axles>

C<numberOfAxles>

=begin html

The number of axles.</p> <p>Typical unit code(s): C62

=end html


A number_of_axles should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::QuantitativeValue']>

=item C<Num>

=back

=cut

has number_of_axles => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<number_of_doors>

C<numberOfDoors>

=begin html

The number of doors.</p> <p>Typical unit code(s): C62

=end html


A number_of_doors should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::QuantitativeValue']>

=item C<Num>

=back

=cut

has number_of_doors => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<number_of_forward_gears>

C<numberOfForwardGears>

=begin html

The total number of forward gears available for the transmission system of
the vehicle.</p> <p>Typical unit code(s): C62

=end html


A number_of_forward_gears should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::QuantitativeValue']>

=item C<Num>

=back

=cut

has number_of_forward_gears => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<number_of_previous_owners>

C<numberOfPreviousOwners>

=begin html

The number of owners of the vehicle, including the current one.</p>
<p>Typical unit code(s): C62

=end html


A number_of_previous_owners should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::QuantitativeValue']>

=item C<Num>

=back

=cut

has number_of_previous_owners => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<production_date>

C<productionDate>

The date of production of the item, e.g. vehicle.


A production_date should be one of the following types:

=over

=item C<Str>

=back

=cut

has production_date => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<purchase_date>

C<purchaseDate>

The date the item e.g. vehicle was purchased by the current owner.


A purchase_date should be one of the following types:

=over

=item C<Str>

=back

=cut

has purchase_date => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<steering_position>

C<steeringPosition>

The position of the steering wheel or similar device (mostly for cars).


A steering_position should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::SteeringPositionValue']>

=back

=cut

has steering_position => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<vehicle_configuration>

C<vehicleConfiguration>

A short text indicating the configuration of the vehicle, e.g. '5dr
hatchback ST 2.5 MT 225 hp' or 'limited edition'.


A vehicle_configuration should be one of the following types:

=over

=item C<Str>

=back

=cut

has vehicle_configuration => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<vehicle_engine>

C<vehicleEngine>

Information about the engine or engines of the vehicle.


A vehicle_engine should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::EngineSpecification']>

=back

=cut

has vehicle_engine => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<vehicle_identification_number>

C<vehicleIdentificationNumber>

The Vehicle Identification Number (VIN) is a unique serial number used by
the automotive industry to identify individual motor vehicles.


A vehicle_identification_number should be one of the following types:

=over

=item C<Str>

=back

=cut

has vehicle_identification_number => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<vehicle_interior_color>

C<vehicleInteriorColor>

The color or color combination of the interior of the vehicle.


A vehicle_interior_color should be one of the following types:

=over

=item C<Str>

=back

=cut

has vehicle_interior_color => (
    is        => 'rw',
    predicate => 1,
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

=cut

has vehicle_interior_type => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<vehicle_model_date>

C<vehicleModelDate>

The release date of a vehicle model (often used to differentiate versions
of the same make and model).


A vehicle_model_date should be one of the following types:

=over

=item C<Str>

=back

=cut

has vehicle_model_date => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<vehicle_seating_capacity>

C<vehicleSeatingCapacity>

=begin html

The number of passengers that can be seated in the vehicle, both in terms
of the physical space available, and in terms of limitations set by
law.</p> <p>Typical unit code(s): C62 for persons.

=end html


A vehicle_seating_capacity should be one of the following types:

=over

=item C<Num>

=item C<InstanceOf['LDF::Schema::QuantitativeValue']>

=back

=cut

has vehicle_seating_capacity => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<vehicle_special_usage>

C<vehicleSpecialUsage>

Indicates whether the vehicle has been used for special purposes, like
commercial rental, driving school, or as a taxi. The legislation in many
countries requires this information to be revealed when offering a car for
sale.


A vehicle_special_usage should be one of the following types:

=over

=item C<Str>

=back

=cut

has vehicle_special_usage => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<vehicle_transmission>

C<vehicleTransmission>

The type of component used for transmitting the power from a rotating power
source to the wheels or other relevant component(s) ("gearbox" for cars).


A vehicle_transmission should be one of the following types:

=over

=item C<Str>

=item C<InstanceOf['LDF::Schema::QualitativeValue']>

=back

=cut

has vehicle_transmission => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'Vehicle' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields,
      { cargoVolume => 'cargo_volume' },
      { dateVehicleFirstRegistered => 'date_vehicle_first_registered' },
      { driveWheelConfiguration => 'drive_wheel_configuration' },
      { fuelConsumption => 'fuel_consumption' },
      { fuelEfficiency => 'fuel_efficiency' },
      { fuelType => 'fuel_type' },
      { knownVehicleDamages => 'known_vehicle_damages' },
      { mileageFromOdometer => 'mileage_from_odometer' },
      { numberOfAirbags => 'number_of_airbags' },
      { numberOfAxles => 'number_of_axles' },
      { numberOfDoors => 'number_of_doors' },
      { numberOfForwardGears => 'number_of_forward_gears' },
      { numberOfPreviousOwners => 'number_of_previous_owners' },
      { productionDate => 'production_date' },
      { purchaseDate => 'purchase_date' },
      { steeringPosition => 'steering_position' },
      { vehicleConfiguration => 'vehicle_configuration' },
      { vehicleEngine => 'vehicle_engine' },
      { vehicleIdentificationNumber => 'vehicle_identification_number' },
      { vehicleInteriorColor => 'vehicle_interior_color' },
      { vehicleInteriorType => 'vehicle_interior_type' },
      { vehicleModelDate => 'vehicle_model_date' },
      { vehicleSeatingCapacity => 'vehicle_seating_capacity' },
      { vehicleSpecialUsage => 'vehicle_special_usage' },
      { vehicleTransmission => 'vehicle_transmission' },
    ]
};




=head1 SEE ALSO



L<LDF::Schema::Product>

=cut

1;
