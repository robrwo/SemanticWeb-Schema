use utf8;

package SemanticWeb::Schema::MedicalContraindication;

# ABSTRACT: A condition or factor that serves as a reason to withhold a certain medical therapy

use Moo;

extends qw/ SemanticWeb::Schema::MedicalEntity /;


use MooX::JSON_LD 'MedicalContraindication';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v13.0.0';

=encoding utf8

=head1 DESCRIPTION

A condition or factor that serves as a reason to withhold a certain medical
therapy. Contraindications can be absolute (there are no reasonable
circumstances for undertaking a course of action) or relative (the patient
is at higher risk of complications, but that these risks may be outweighed
by other considerations or mitigated by other measures).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::MedicalEntity>

=cut

1;
