use utf8;

package SemanticWeb::Schema::MaximumDoseSchedule;

# ABSTRACT: The maximum dosing schedule considered safe for a drug or supplement as recommended by an authority or by the drug/supplement's manufacturer

use Moo;

extends qw/ SemanticWeb::Schema::DoseSchedule /;


use MooX::JSON_LD 'MaximumDoseSchedule';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v4.0.0';

=encoding utf8

=head1 DESCRIPTION

The maximum dosing schedule considered safe for a drug or supplement as
recommended by an authority or by the drug/supplement's manufacturer.
Capture the recommending authority in the recognizingAuthority property of
MedicalEntity.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::DoseSchedule>

=cut

1;
