use utf8;

package SemanticWeb::Schema::practicesAt;

# ABSTRACT: A [[MedicalOrganization]] where the [[IndividualPhysician]] practices.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'practicesAt';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A L<SemanticWeb::Schema::MedicalOrganization> where the L<SemanticWeb::Schema::IndividualPhysician> practices.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
