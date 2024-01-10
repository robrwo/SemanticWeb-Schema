use utf8;

package SemanticWeb::Schema::BodyMeasurementArm;

# ABSTRACT: Arm length (measured between arms/shoulder line intersection and the prominent wrist bone)

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'BodyMeasurementArm';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Arm length (measured between arms/shoulder line intersection and the
prominent wrist bone). Used, for example, to fit shirts.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
