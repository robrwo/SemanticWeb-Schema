use utf8;

package SemanticWeb::Schema::FundingScheme;

# ABSTRACT: A FundingScheme combines organizational

use Moo;

extends qw/ SemanticWeb::Schema::Organization /;


use MooX::JSON_LD 'FundingScheme';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v11.01.0';

=encoding utf8

=head1 DESCRIPTION

A FundingScheme combines organizational, project and policy aspects of
grant-based funding that sets guidelines, principles and mechanisms to
support other kinds of projects and activities. Funding is typically
organized via [[Grant]] funding. Examples of funding schemes: Swiss
Priority Programmes (SPPs); EU Framework 7 (FP7); Horizon 2020; the NIH-R01
Grant Program; Wellcome institutional strategic support fund. For large
scale public sector funding, the management and administration of grant
awards is often handled by other, dedicated, organizations -
[[FundingAgency]]s such as ERC, REA, ...




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Organization>

=cut

1;
