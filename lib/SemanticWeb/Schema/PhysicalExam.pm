use utf8;

package SemanticWeb::Schema::PhysicalExam;

# ABSTRACT: A type of physical examination of a patient performed by a physician

use Moo;

extends qw/ SemanticWeb::Schema::MedicalEnumeration SemanticWeb::Schema::MedicalProcedure /;


use MooX::JSON_LD 'PhysicalExam';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v11.1.2';

=encoding utf8

=head1 DESCRIPTION

A type of physical examination of a patient performed by a physician. 




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::MedicalProcedure>

=cut

1;
