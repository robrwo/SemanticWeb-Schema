use utf8;

package SemanticWeb::Schema::molecularFormula;

# ABSTRACT: The empirical formula is the simplest whole number ratio of all the atoms in a molecule.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'molecularFormula';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The empirical formula is the simplest whole number ratio of all the atoms
in a molecule.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
