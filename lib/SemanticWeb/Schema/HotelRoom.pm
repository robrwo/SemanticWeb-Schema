use utf8;

package SemanticWeb::Schema::HotelRoom;

# ABSTRACT: A hotel room is a single room in a hotel

use Moo;

extends qw/ SemanticWeb::Schema::Room /;


use MooX::JSON_LD 'HotelRoom';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.2';

=encoding utf8

=head1 DESCRIPTION

=begin html

A hotel room is a single room in a hotel. <br /><br /> See also the <a
href="/docs/hotels.html">dedicated document on the use of schema.org for
marking up hotels and other forms of accommodations</a>.

=end html




=head1 ATTRIBUTES


=head2 C<bed>



The type of bed or beds included in the accommodation. For the single case
of just one bed of a certain type, you use bed directly with a text. If you
want to indicate the quantity of a certain kind of bed, use an instance of
BedDetails. For more detailed information, use the amenityFeature property.


A bed should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::BedDetails']>

=item C<Str>

=back

=cut

has bed => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'bed',
);


=head2 C<occupancy>



The allowed total occupancy for the accommodation in persons (including
infants etc). For individual accommodations, this is not necessarily the
legal maximum but defines the permitted usage as per the contractual
agreement (e.g. a double room used by a single person). Typical unit
code(s): C62 for person


A occupancy should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=back

=cut

has occupancy => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'occupancy',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Room>

=cut

1;
