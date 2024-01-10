use utf8;

package SemanticWeb::Schema::cvdFacilityCounty;

# ABSTRACT: Name of the County of the NHSN facility that this data record applies to

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'cvdFacilityCounty';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Name of the County of the NHSN facility that this data record applies to. Use [[cvdFacilityId]] to identify the facility. To provide other details, [[healthcareReportingData]] can be used on a L<SemanticWeb::Schema::Hospital> entry.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
