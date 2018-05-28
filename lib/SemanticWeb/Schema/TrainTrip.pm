package SemanticWeb::Schema::TrainTrip;

# ABSTRACT: A trip on a commercial train line.

use Moo;

extends qw/ SemanticWeb::Schema::Intangible /;


use MooX::JSON_LD 'TrainTrip';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A trip on a commercial train line.




=head1 ATTRIBUTES


=head2 C<arrival_platform>

C<arrivalPlatform>

The platform where the train arrives.


A arrival_platform should be one of the following types:

=over

=item C<Str>

=back

=cut

has arrival_platform => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'arrivalPlatform',
    json_ld_serializer => \&_serialize_arrival_platform,
);

sub _serialize_arrival_platform { $_[0]->_serializer('arrival_platform') }


=head2 C<arrival_station>

C<arrivalStation>

The station where the train trip ends.


A arrival_station should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::TrainStation']>

=back

=cut

has arrival_station => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'arrivalStation',
    json_ld_serializer => \&_serialize_arrival_station,
);

sub _serialize_arrival_station { $_[0]->_serializer('arrival_station') }


=head2 C<arrival_time>

C<arrivalTime>

The expected arrival time.


A arrival_time should be one of the following types:

=over

=item C<Str>

=back

=cut

has arrival_time => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'arrivalTime',
    json_ld_serializer => \&_serialize_arrival_time,
);

sub _serialize_arrival_time { $_[0]->_serializer('arrival_time') }


=head2 C<departure_platform>

C<departurePlatform>

The platform from which the train departs.


A departure_platform should be one of the following types:

=over

=item C<Str>

=back

=cut

has departure_platform => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'departurePlatform',
    json_ld_serializer => \&_serialize_departure_platform,
);

sub _serialize_departure_platform { $_[0]->_serializer('departure_platform') }


=head2 C<departure_station>

C<departureStation>

The station from which the train departs.


A departure_station should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::TrainStation']>

=back

=cut

has departure_station => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'departureStation',
    json_ld_serializer => \&_serialize_departure_station,
);

sub _serialize_departure_station { $_[0]->_serializer('departure_station') }


=head2 C<departure_time>

C<departureTime>

The expected departure time.


A departure_time should be one of the following types:

=over

=item C<Str>

=back

=cut

has departure_time => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'departureTime',
    json_ld_serializer => \&_serialize_departure_time,
);

sub _serialize_departure_time { $_[0]->_serializer('departure_time') }


=head2 C<provider>



The service provider, service operator, or service performer; the goods
producer. Another party (a seller) may offer those services or goods on
behalf of the provider. A provider may also serve as the seller.


A provider should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=cut

has provider => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'provider',
    json_ld_serializer => \&_serialize_provider,
);

sub _serialize_provider { $_[0]->_serializer('provider') }


=head2 C<train_name>

C<trainName>

The name of the train (e.g. The Orient Express).


A train_name should be one of the following types:

=over

=item C<Str>

=back

=cut

has train_name => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'trainName',
    json_ld_serializer => \&_serialize_train_name,
);

sub _serialize_train_name { $_[0]->_serializer('train_name') }


=head2 C<train_number>

C<trainNumber>

The unique identifier for the train.


A train_number should be one of the following types:

=over

=item C<Str>

=back

=cut

has train_number => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'trainNumber',
    json_ld_serializer => \&_serialize_train_number,
);

sub _serialize_train_number { $_[0]->_serializer('train_number') }




=head1 SEE ALSO



L<SemanticWeb::Schema::Intangible>

=cut

1;
