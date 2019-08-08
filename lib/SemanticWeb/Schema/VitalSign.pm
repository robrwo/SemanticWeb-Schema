use utf8;

package SemanticWeb::Schema::VitalSign;

# ABSTRACT: Vital signs are measures of various physiological functions in order to assess the most basic body functions.

use Moo;

extends qw/ SemanticWeb::Schema::MedicalSign /;


use MooX::JSON_LD 'VitalSign';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.9.0';

=encoding utf8

=head1 DESCRIPTION

Vital signs are measures of various physiological functions in order to
assess the most basic body functions.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::MedicalSign>

=cut

1;
