use utf8;

package SemanticWeb::Schema::interactingDrug;

# ABSTRACT: Another drug that is known to interact with this drug in a way that impacts the effect of this drug or causes a risk to the patient

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'interactingDrug';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Another drug that is known to interact with this drug in a way that impacts
the effect of this drug or causes a risk to the patient. Note: disease
interactions are typically captured as contraindications.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
