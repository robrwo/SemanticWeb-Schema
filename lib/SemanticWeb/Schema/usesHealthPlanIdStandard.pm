use utf8;

package SemanticWeb::Schema::usesHealthPlanIdStandard;

# ABSTRACT: The standard for interpreting the Plan ID

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'usesHealthPlanIdStandard';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The standard for interpreting the Plan ID. The preferred is "HIOS". See the
Centers for Medicare & Medicaid Services for more details.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
