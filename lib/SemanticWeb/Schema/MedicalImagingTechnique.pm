use utf8;

package SemanticWeb::Schema::MedicalImagingTechnique;

# ABSTRACT: Any medical imaging modality typically used for diagnostic purposes

use Moo;

extends qw/ SemanticWeb::Schema::MedicalEnumeration /;


use MooX::JSON_LD 'MedicalImagingTechnique';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v9.0.1';

=encoding utf8

=head1 DESCRIPTION

Any medical imaging modality typically used for diagnostic purposes.
Enumerated type.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::MedicalEnumeration>

=cut

1;
