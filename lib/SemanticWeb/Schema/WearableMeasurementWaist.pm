use utf8;

package SemanticWeb::Schema::WearableMeasurementWaist;

# ABSTRACT: Measurement of the waist section

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'WearableMeasurementWaist';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Measurement of the waist section, for example of pants.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
