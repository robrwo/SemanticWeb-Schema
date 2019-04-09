use utf8;

package SemanticWeb::Schema::Physician;

# ABSTRACT: A doctor's office.

use Moo;

extends qw/ SemanticWeb::Schema::MedicalOrganization SemanticWeb::Schema::MedicalBusiness /;


use MooX::JSON_LD 'Physician';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.1.0';

=encoding utf8

=head1 DESCRIPTION

A doctor's office.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::MedicalBusiness>

=cut

1;
