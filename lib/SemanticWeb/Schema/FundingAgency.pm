use utf8;

package SemanticWeb::Schema::FundingAgency;

# ABSTRACT: A FundingAgency is an organization that implements one or more [[FundingScheme]]s and manages the granting process (via [[Grant]]s

use Moo;

extends qw/ SemanticWeb::Schema::Project /;


use MooX::JSON_LD 'FundingAgency';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v11.1.1';

=encoding utf8

=head1 DESCRIPTION

A FundingAgency is an organization that implements one or more L<SemanticWeb::Schema::FundingScheme>s and manages
    the granting process (via L<SemanticWeb::Schema::Grant>s, typically L<SemanticWeb::Schema::MonetaryGrant>s).
    A funding agency is not always required for grant funding, e.g. philanthropic giving, corporate sponsorship etc.

Examples of funding agencies include ERC, REA, NIH, Bill and Melinda Gates Foundation...



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Project>

=cut

1;
