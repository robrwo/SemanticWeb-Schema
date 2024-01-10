use utf8;

package SemanticWeb::Schema::cvdFacilityId;

# ABSTRACT: Identifier of the NHSN facility that this data record applies to

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'cvdFacilityId';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Identifier of the NHSN facility that this data record applies to. Use [[cvdFacilityCounty]] to indicate the county. To provide other details, [[healthcareReportingData]] can be used on a L<SemanticWeb::Schema::Hospital> entry.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
