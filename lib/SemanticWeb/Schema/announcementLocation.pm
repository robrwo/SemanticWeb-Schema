use utf8;

package SemanticWeb::Schema::announcementLocation;

# ABSTRACT: Indicates a specific [[CivicStructure]] or [[LocalBusiness]] associated with the SpecialAnnouncement

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'announcementLocation';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Indicates a specific L<SemanticWeb::Schema::CivicStructure> or L<SemanticWeb::Schema::LocalBusiness> associated with the SpecialAnnouncement. For example, a specific testing facility or business with special opening hours. For a larger geographic region like a quarantine of an entire region, use [[spatialCoverage]].



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
