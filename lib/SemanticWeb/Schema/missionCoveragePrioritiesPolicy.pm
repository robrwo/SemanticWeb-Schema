use utf8;

package SemanticWeb::Schema::missionCoveragePrioritiesPolicy;

# ABSTRACT: For a [[NewsMediaOrganization]]

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'missionCoveragePrioritiesPolicy';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

For a L<SemanticWeb::Schema::NewsMediaOrganization>, a statement on coverage priorities, including any public agenda or stance on issues.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
