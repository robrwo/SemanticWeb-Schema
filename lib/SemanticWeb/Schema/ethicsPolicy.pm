use utf8;

package SemanticWeb::Schema::ethicsPolicy;

# ABSTRACT: Statement about ethics policy, e

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'ethicsPolicy';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Statement about ethics policy, e.g. of a L<SemanticWeb::Schema::NewsMediaOrganization> regarding journalistic and publishing practices, or of a L<SemanticWeb::Schema::Restaurant>, a page describing food source policies. In the case of a L<SemanticWeb::Schema::NewsMediaOrganization>, an ethicsPolicy is typically a statement describing the personal, organizational, and corporate standards of behavior expected by the organization.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
