use utf8;

package SemanticWeb::Schema::cvdNumC19HOPats;

# ABSTRACT: numc19hopats - HOSPITAL ONSET: Patients hospitalized in an NHSN inpatient care location with onset of suspected or confirmed COVID-19 14 or more days after hospitalization.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'cvdNumC19HOPats';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

numc19hopats - HOSPITAL ONSET: Patients hospitalized in an NHSN inpatient
care location with onset of suspected or confirmed COVID-19 14 or more days
after hospitalization.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
