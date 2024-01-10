use utf8;

package SemanticWeb::Schema::cvdNumC19OverflowPats;

# ABSTRACT: numc19overflowpats - ED/OVERFLOW: Patients with suspected or confirmed COVID-19 who are in the ED or any overflow location awaiting an inpatient bed.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'cvdNumC19OverflowPats';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

numc19overflowpats - ED/OVERFLOW: Patients with suspected or confirmed
COVID-19 who are in the ED or any overflow location awaiting an inpatient
bed.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
