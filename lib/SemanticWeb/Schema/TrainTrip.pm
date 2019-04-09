use utf8;

package SemanticWeb::Schema::TrainTrip;

# ABSTRACT: A trip on a commercial train line.

use Moo;

extends qw/ SemanticWeb::Schema::Trip /;


use MooX::JSON_LD 'TrainTrip';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.5.0';

=encoding utf8

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
);


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
);


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
);


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
);


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
);


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
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Trip>

=cut

1;
