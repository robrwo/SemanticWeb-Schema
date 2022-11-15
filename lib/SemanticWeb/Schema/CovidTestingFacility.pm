use utf8;

package SemanticWeb::Schema::CovidTestingFacility;

# ABSTRACT: A CovidTestingFacility is a [[MedicalClinic]] where testing for the COVID-19 Coronavirus disease is available

use Moo;

extends qw/ SemanticWeb::Schema::MedicalClinic /;


use MooX::JSON_LD 'CovidTestingFacility';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v15.0.1';

=encoding utf8

=head1 DESCRIPTION

A CovidTestingFacility is a L<SemanticWeb::Schema::MedicalClinic> where testing for the COVID-19 Coronavirus
      disease is available. If the facility is being made available from an established L<SemanticWeb::Schema::Pharmacy>, L<SemanticWeb::Schema::Hotel>, or other
      non-medical organization, multiple types can be listed. This makes it easier to re-use existing schema.org information
      about that place, e.g. contact info, address, opening hours. Note that in an emergency, such information may not always be reliable.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::MedicalClinic>

=cut

1;
