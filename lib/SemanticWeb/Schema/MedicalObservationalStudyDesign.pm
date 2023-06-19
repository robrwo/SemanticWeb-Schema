use utf8;

package SemanticWeb::Schema::MedicalObservationalStudyDesign;

# ABSTRACT: Design models for observational medical studies

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::MedicalEnumeration /;


use MooX::JSON_LD 'MedicalObservationalStudyDesign';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.1';

=encoding utf8

=head1 DESCRIPTION

Design models for observational medical studies. Enumerated type.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::MedicalEnumeration>

=cut

1;
