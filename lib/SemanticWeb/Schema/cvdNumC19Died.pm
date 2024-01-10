use utf8;

package SemanticWeb::Schema::cvdNumC19Died;

# ABSTRACT: numc19died - DEATHS: Patients with suspected or confirmed COVID-19 who died in the hospital

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'cvdNumC19Died';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

numc19died - DEATHS: Patients with suspected or confirmed COVID-19 who died
in the hospital, ED, or any overflow location.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
