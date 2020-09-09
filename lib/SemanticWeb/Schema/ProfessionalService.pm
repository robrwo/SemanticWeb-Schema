use utf8;

package SemanticWeb::Schema::ProfessionalService;

# ABSTRACT: Original definition: "provider of professional services

use Moo;

extends qw/ SemanticWeb::Schema::LocalBusiness /;


use MooX::JSON_LD 'ProfessionalService';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v10.0.0';

=encoding utf8

=head1 DESCRIPTION

=begin html

<p>Original definition: "provider of professional services."<br/><br/> The
general <a class="localLink"
href="http://schema.org/ProfessionalService">ProfessionalService</a> type
for local businesses was deprecated due to confusion with <a
class="localLink" href="http://schema.org/Service">Service</a>. For
reference, the types that it included were: <a class="localLink"
href="http://schema.org/Dentist">Dentist</a>, <a class="localLink"
href="http://schema.org/AccountingService">AccountingService</a>, <a
class="localLink" href="http://schema.org/Attorney">Attorney</a>, <a
class="localLink" href="http://schema.org/Notary">Notary</a>, as well as
types for several kinds of <a class="localLink"
href="http://schema.org/HomeAndConstructionBusiness">HomeAndConstructionBus
iness</a>: <a class="localLink"
href="http://schema.org/Electrician">Electrician</a>, <a class="localLink"
href="http://schema.org/GeneralContractor">GeneralContractor</a>, <a
class="localLink" href="http://schema.org/HousePainter">HousePainter</a>,
<a class="localLink" href="http://schema.org/Locksmith">Locksmith</a>, <a
class="localLink" href="http://schema.org/Plumber">Plumber</a>, <a
class="localLink"
href="http://schema.org/RoofingContractor">RoofingContractor</a>. <a
class="localLink" href="http://schema.org/LegalService">LegalService</a>
was introduced as a more inclusive supertype of <a class="localLink"
href="http://schema.org/Attorney">Attorney</a>.<p>

=end html




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::LocalBusiness>

=cut

1;
