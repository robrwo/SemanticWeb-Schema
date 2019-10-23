use utf8;

package SemanticWeb::Schema::MedicalSpecialty;

# ABSTRACT: Any specific branch of medical science or practice

use Moo;

extends qw/ SemanticWeb::Schema::MedicalEnumeration SemanticWeb::Schema::Specialty /;


use MooX::JSON_LD 'MedicalSpecialty';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v4.0.1';

=encoding utf8

=head1 DESCRIPTION

Any specific branch of medical science or practice. Medical specialities
include clinical specialties that pertain to particular organ systems and
their respective disease states, as well as allied health specialties.
Enumerated type.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Specialty>

=cut

1;
