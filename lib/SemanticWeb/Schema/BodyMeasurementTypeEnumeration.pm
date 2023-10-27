use utf8;

package SemanticWeb::Schema::BodyMeasurementTypeEnumeration;

# ABSTRACT: Enumerates types (or dimensions) of a person's body measurements

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::MeasurementTypeEnumeration /;


use MooX::JSON_LD 'BodyMeasurementTypeEnumeration';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v23.0.0';

=encoding utf8

=head1 DESCRIPTION

Enumerates types (or dimensions) of a person's body measurements, for
example for fitting of clothes.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::MeasurementTypeEnumeration>

=cut

1;
