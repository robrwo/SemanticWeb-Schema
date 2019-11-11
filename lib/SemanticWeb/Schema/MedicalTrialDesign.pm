use utf8;

package SemanticWeb::Schema::MedicalTrialDesign;

# ABSTRACT: Design models for medical trials

use Moo;

extends qw/ SemanticWeb::Schema::Enumeration SemanticWeb::Schema::MedicalEnumeration /;


use MooX::JSON_LD 'MedicalTrialDesign';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v5.0.0';

=encoding utf8

=head1 DESCRIPTION

Design models for medical trials. Enumerated type.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::MedicalEnumeration>

=cut

1;
