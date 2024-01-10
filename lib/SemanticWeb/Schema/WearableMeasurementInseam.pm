use utf8;

package SemanticWeb::Schema::WearableMeasurementInseam;

# ABSTRACT: Measurement of the inseam

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'WearableMeasurementInseam';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Measurement of the inseam, for example of pants.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
