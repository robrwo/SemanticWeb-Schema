use utf8;

package SemanticWeb::Schema::ProfessionalService;

# ABSTRACT: Original definition: "provider of professional services

use Moo;

extends qw/ SemanticWeb::Schema::LocalBusiness /;


use MooX::JSON_LD 'ProfessionalService';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v11.0.0';

=encoding utf8

=head1 DESCRIPTION

Original definition: "provider of professional services."\n\nThe general
[[ProfessionalService]] type for local businesses was deprecated due to
confusion with [[Service]]. For reference, the types that it included were:
[[Dentist]], [[AccountingService]], [[Attorney]], [[Notary]], as well as
types for several kinds of [[HomeAndConstructionBusiness]]:
[[Electrician]], [[GeneralContractor]], [[HousePainter]], [[Locksmith]],
[[Plumber]], [[RoofingContractor]]. [[LegalService]] was introduced as a
more inclusive supertype of [[Attorney]].




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::LocalBusiness>

=cut

1;
