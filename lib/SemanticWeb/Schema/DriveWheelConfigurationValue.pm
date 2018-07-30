package SemanticWeb::Schema::DriveWheelConfigurationValue;

# ABSTRACT: A value indicating which roadwheels will receive torque.

use Moo;

extends qw/ SemanticWeb::Schema::QualitativeValue /;


use MooX::JSON_LD 'DriveWheelConfigurationValue';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.2';

=head1 DESCRIPTION

A value indicating which roadwheels will receive torque.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::QualitativeValue>

=cut

1;