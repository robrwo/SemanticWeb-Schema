use utf8;

package SemanticWeb::Schema::CovidTestingFacility;

# ABSTRACT: A CovidTestingFacility is a MedicalClinic where testing for the COVID-19 Coronavirus disease is available

use Moo;

extends qw/ SemanticWeb::Schema::MedicalClinic /;


use MooX::JSON_LD 'CovidTestingFacility';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v10.0.0';

=encoding utf8

=head1 DESCRIPTION

=begin html

<p>A CovidTestingFacility is a <a class="localLink"
href="http://schema.org/MedicalClinic">MedicalClinic</a> where testing for
the COVID-19 Coronavirus disease is available. If the facility is being
made available from an established <a class="localLink"
href="http://schema.org/Pharmacy">Pharmacy</a>, <a class="localLink"
href="http://schema.org/Hotel">Hotel</a>, or other non-medical
organization, multiple types can be listed. This makes it easier to re-use
existing schema.org information about that place e.g. contact info,
address, opening hours. Note that in an emergency, such information may not
always be reliable.<p>

=end html




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::MedicalClinic>

=cut

1;
