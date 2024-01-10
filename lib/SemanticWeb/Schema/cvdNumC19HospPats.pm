use utf8;

package SemanticWeb::Schema::cvdNumC19HospPats;

# ABSTRACT: numc19hosppats - HOSPITALIZED: Patients currently hospitalized in an inpatient care location who have suspected or confirmed COVID-19.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'cvdNumC19HospPats';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

numc19hosppats - HOSPITALIZED: Patients currently hospitalized in an
inpatient care location who have suspected or confirmed COVID-19.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
