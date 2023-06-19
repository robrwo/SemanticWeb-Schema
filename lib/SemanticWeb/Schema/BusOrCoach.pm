use utf8;

package SemanticWeb::Schema::BusOrCoach;

# ABSTRACT: A bus (also omnibus or autobus) is a road vehicle designed to carry passengers

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::Vehicle /;


use MooX::JSON_LD 'BusOrCoach';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.0';

=encoding utf8

=head1 DESCRIPTION

A bus (also omnibus or autobus) is a road vehicle designed to carry
passengers. Coaches are luxury busses, usually in service for long distance
travel.




=head1 ATTRIBUTES


=head2 C<acriss_code>

C<acrissCode>

The ACRISS Car Classification Code is a code used by many car rental
companies, for classifying vehicles. ACRISS stands for Association of Car
Rental Industry Systems and Standards.


A acriss_code should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_acriss_code>

A predicate for the L</acriss_code> attribute.

=cut

has acriss_code => (
    is        => 'rw',
    predicate => '_has_acriss_code',
    json_ld   => 'acrissCode',
);


=head2 C<roof_load>

C<roofLoad>

The permitted total weight of cargo and installations (e.g. a roof rack) on top of the vehicle.

Typical unit code(s): KGM for kilogram, LBR for pound

=over

=item *

Note 1: You can indicate additional information in the [[name]] of the L<SemanticWeb::Schema::QuantitativeValue> node.


=item *

Note 2: You may also link to a L<SemanticWeb::Schema::QualitativeValue> node that provides additional information using [[valueReference]]


=item *

Note 3: Note that you can use [[minValue]] and [[maxValue]] to indicate ranges.


=back

A roof_load should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=back

=head2 C<_has_roof_load>

A predicate for the L</roof_load> attribute.

=cut

has roof_load => (
    is        => 'rw',
    predicate => '_has_roof_load',
    json_ld   => 'roofLoad',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Vehicle>

=cut

1;
