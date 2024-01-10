use utf8;

package SemanticWeb::Schema::cvdNumC19OFMechVentPats;

# ABSTRACT: numc19ofmechventpats - ED/OVERFLOW and VENTILATED: Patients with suspected or confirmed COVID-19 who are in the ED or any overflow location awaiting an inpatient bed and on a mechanical ventilator.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'cvdNumC19OFMechVentPats';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

numc19ofmechventpats - ED/OVERFLOW and VENTILATED: Patients with suspected
or confirmed COVID-19 who are in the ED or any overflow location awaiting
an inpatient bed and on a mechanical ventilator.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
