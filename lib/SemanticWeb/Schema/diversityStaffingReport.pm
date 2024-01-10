use utf8;

package SemanticWeb::Schema::diversityStaffingReport;

# ABSTRACT: For an [[Organization]] (often but not necessarily a [[NewsMediaOrganization]])

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'diversityStaffingReport';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

For an L<SemanticWeb::Schema::Organization> (often but not necessarily a L<SemanticWeb::Schema::NewsMediaOrganization>), a report on staffing diversity issues. In a news context this might be for example ASNE or RTDNA (US) reports, or self-reported.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
