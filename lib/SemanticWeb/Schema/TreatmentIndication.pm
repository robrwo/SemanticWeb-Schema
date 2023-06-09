use utf8;

package SemanticWeb::Schema::TreatmentIndication;

# ABSTRACT: An indication for treating an underlying condition

use Moo;

extends qw/ SemanticWeb::Schema::MedicalIndication /;


use MooX::JSON_LD 'TreatmentIndication';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.0';

=encoding utf8

=head1 DESCRIPTION

An indication for treating an underlying condition, symptom, etc.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::MedicalIndication>

=cut

1;
