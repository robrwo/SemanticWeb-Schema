use utf8;

package SemanticWeb::Schema::clincalPharmacology;

# ABSTRACT: Description of the absorption and elimination of drugs

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'clincalPharmacology';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Description of the absorption and elimination of drugs, including their
concentration (pharmacokinetics, pK) and biological effects
(pharmacodynamics, pD).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
