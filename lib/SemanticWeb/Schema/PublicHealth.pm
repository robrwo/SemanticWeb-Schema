use utf8;

package SemanticWeb::Schema::PublicHealth;

# ABSTRACT: Branch of medicine that pertains to the health services to improve and protect community health

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::MedicalBusiness /;


use MooX::JSON_LD 'PublicHealth';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Branch of medicine that pertains to the health services to improve and
protect community health, especially epidemiology, sanitation,
immunization, and preventive medicine.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::MedicalBusiness>

=cut

1;
