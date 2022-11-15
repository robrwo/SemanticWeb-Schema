use utf8;

package SemanticWeb::Schema::ProfessionalService;

# ABSTRACT: Original definition: "provider of professional services

use Moo;

extends qw/ SemanticWeb::Schema::LocalBusiness /;


use MooX::JSON_LD 'ProfessionalService';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v15.0.0';

=encoding utf8

=head1 DESCRIPTION

Original definition: "provider of professional services."

The general L<SemanticWeb::Schema::ProfessionalService> type for local businesses was deprecated due to confusion with L<SemanticWeb::Schema::Service>. For reference, the types that it included were: L<SemanticWeb::Schema::Dentist>,
        L<SemanticWeb::Schema::AccountingService>, L<SemanticWeb::Schema::Attorney>, L<SemanticWeb::Schema::Notary>, as well as types for several kinds of L<SemanticWeb::Schema::HomeAndConstructionBusiness>: L<SemanticWeb::Schema::Electrician>, L<SemanticWeb::Schema::GeneralContractor>,
        L<SemanticWeb::Schema::HousePainter>, L<SemanticWeb::Schema::Locksmith>, L<SemanticWeb::Schema::Plumber>, L<SemanticWeb::Schema::RoofingContractor>. L<SemanticWeb::Schema::LegalService> was introduced as a more inclusive supertype of L<SemanticWeb::Schema::Attorney>.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::LocalBusiness>

=cut

1;
