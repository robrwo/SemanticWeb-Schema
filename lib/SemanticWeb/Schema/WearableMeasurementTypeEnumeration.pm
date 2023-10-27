use utf8;

package SemanticWeb::Schema::WearableMeasurementTypeEnumeration;

# ABSTRACT: Enumerates common types of measurement for wearables products.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::MeasurementTypeEnumeration /;


use MooX::JSON_LD 'WearableMeasurementTypeEnumeration';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v23.0.1';

=encoding utf8

=head1 DESCRIPTION

Enumerates common types of measurement for wearables products.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::MeasurementTypeEnumeration>

=cut

1;
