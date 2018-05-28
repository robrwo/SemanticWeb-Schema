package SemanticWeb::Schema::EngineSpecification;

# ABSTRACT: Information about the engine of the vehicle

use Moo;

extends qw/ SemanticWeb::Schema::StructuredValue /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

Information about the engine of the vehicle. A vehicle can have multiple
engines represented by multiple engine specification entities.




=head1 ATTRIBUTES


=head2 C<fuel_type>

C<fuelType>

The type of fuel suitable for the engine or engines of the vehicle. If the
vehicle has only one engine, this property can be attached directly to the
vehicle.


A fuel_type should be one of the following types:

=over

=item C<Str>

=item C<InstanceOf['SemanticWeb::Schema::QualitativeValue']>

=back

=cut

has fuel_type => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'fuelType',
    json_ld_serializer => \&_serialize_fuel_type,
);

sub _serialize_fuel_type { $_[0]->_serializer('fuel_type') }




around json_ld_type => sub { return 'EngineSpecification' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
       'fuelType' => \&_serialize_fuel_type,
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::StructuredValue>

=cut

1;
