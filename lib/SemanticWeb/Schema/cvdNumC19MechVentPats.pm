use utf8;

package SemanticWeb::Schema::cvdNumC19MechVentPats;

# ABSTRACT: numc19mechventpats - HOSPITALIZED and VENTILATED: Patients hospitalized in an NHSN inpatient care location who have suspected or confirmed COVID-19 and are on a mechanical ventilator.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'cvdNumC19MechVentPats';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

numc19mechventpats - HOSPITALIZED and VENTILATED: Patients hospitalized in
an NHSN inpatient care location who have suspected or confirmed COVID-19
and are on a mechanical ventilator.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
