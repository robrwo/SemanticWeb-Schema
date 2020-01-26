use utf8;

package SemanticWeb::Schema::MedicalSymptom;

# ABSTRACT: Any complaint sensed and expressed by the patient (therefore defined as subjective) like stomachache

use Moo;

extends qw/ SemanticWeb::Schema::MedicalSignOrSymptom /;


use MooX::JSON_LD 'MedicalSymptom';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v6.0.0';

=encoding utf8

=head1 DESCRIPTION

Any complaint sensed and expressed by the patient (therefore defined as
subjective) like stomachache, lower-back pain, or fatigue.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::MedicalSignOrSymptom>

=cut

1;
