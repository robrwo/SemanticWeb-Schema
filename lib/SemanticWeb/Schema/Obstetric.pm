use utf8;

package SemanticWeb::Schema::Obstetric;

# ABSTRACT: A specific branch of medical science that specializes in the care of women during the prenatal and postnatal care and with the delivery of the child.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::MedicalBusiness /;


use MooX::JSON_LD 'Obstetric';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A specific branch of medical science that specializes in the care of women
during the prenatal and postnatal care and with the delivery of the child.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::MedicalBusiness>

=cut

1;
