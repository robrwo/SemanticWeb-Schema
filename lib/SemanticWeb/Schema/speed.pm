use utf8;

package SemanticWeb::Schema::speed;

# ABSTRACT: The speed range of the vehicle

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'speed';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The speed range of the vehicle. If the vehicle is powered by an engine, the upper limit of the speed range (indicated by [[maxValue]]) should be the maximum speed achievable under regular conditions.

Typical unit code(s): KMH for km/h, HM for mile per hour (0.447 04 m/s), KNT for knot

I<Note 1: Use [[minValue]] and [[maxValue]] to indicate the range. Typically, the minimal value is zero.
> Note 2: There are many different ways of measuring the speed range. You can link to information about how the given value has been determined using the [[valueReference]] property.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
