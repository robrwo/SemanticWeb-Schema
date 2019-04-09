use utf8;

package SemanticWeb::Schema::Hospital;

# ABSTRACT: A hospital.

use Moo;

extends qw/ SemanticWeb::Schema::EmergencyService SemanticWeb::Schema::MedicalOrganization SemanticWeb::Schema::CivicStructure /;


use MooX::JSON_LD 'Hospital';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.1.0';

=encoding utf8

=head1 DESCRIPTION

A hospital.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::CivicStructure>

=cut

1;
