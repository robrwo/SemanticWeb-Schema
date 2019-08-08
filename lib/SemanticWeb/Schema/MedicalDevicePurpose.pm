use utf8;

package SemanticWeb::Schema::MedicalDevicePurpose;

# ABSTRACT: Categories of medical devices

use Moo;

extends qw/ SemanticWeb::Schema::MedicalEnumeration /;


use MooX::JSON_LD 'MedicalDevicePurpose';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.9.1';

=encoding utf8

=head1 DESCRIPTION

Categories of medical devices, organized by the purpose or intended use of
the device.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::MedicalEnumeration>

=cut

1;
