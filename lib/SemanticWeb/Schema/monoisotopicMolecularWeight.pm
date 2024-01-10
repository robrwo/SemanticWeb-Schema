use utf8;

package SemanticWeb::Schema::monoisotopicMolecularWeight;

# ABSTRACT: The monoisotopic mass is the sum of the masses of the atoms in a molecule using the unbound

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'monoisotopicMolecularWeight';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The monoisotopic mass is the sum of the masses of the atoms in a molecule
using the unbound, ground-state, rest mass of the principal (most abundant)
isotope for each element instead of the isotopic average mass. Please
include the units in the form '&lt;Number&gt; &lt;unit&gt;', for example
'770.230488 g/mol' or as '&lt;QuantitativeValue&gt;.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
