use utf8;

package SemanticWeb::Schema::RecommendedDoseSchedule;

# ABSTRACT: A recommended dosing schedule for a drug or supplement as prescribed or recommended by an authority or by the drug/supplement's manufacturer

use Moo;

extends qw/ SemanticWeb::Schema::DoseSchedule /;


use MooX::JSON_LD 'RecommendedDoseSchedule';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.6.1';

=encoding utf8

=head1 DESCRIPTION

A recommended dosing schedule for a drug or supplement as prescribed or
recommended by an authority or by the drug/supplement's manufacturer.
Capture the recommending authority in the recognizingAuthority property of
MedicalEntity.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::DoseSchedule>

=cut

1;
