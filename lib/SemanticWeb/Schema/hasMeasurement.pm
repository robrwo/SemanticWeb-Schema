use utf8;

package SemanticWeb::Schema::hasMeasurement;

# ABSTRACT: A product measurement

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'hasMeasurement';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A product measurement, for example the inseam of pants, the wheel size of a
bicycle, or the gauge of a screw. Usually an exact measurement, but can
also be a range of measurements for adjustable products, for example belts
and ski bindings.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
