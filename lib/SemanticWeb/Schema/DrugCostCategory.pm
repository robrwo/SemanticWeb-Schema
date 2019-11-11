use utf8;

package SemanticWeb::Schema::DrugCostCategory;

# ABSTRACT: Enumerated categories of medical drug costs.

use Moo;

extends qw/ SemanticWeb::Schema::MedicalEnumeration /;


use MooX::JSON_LD 'DrugCostCategory';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v5.0.1';

=encoding utf8

=head1 DESCRIPTION

Enumerated categories of medical drug costs.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::MedicalEnumeration>

=cut

1;
