use utf8;

package SemanticWeb::Schema::MedicalIndication;

# ABSTRACT: A condition or factor that indicates use of a medical therapy

use Moo;

extends qw/ SemanticWeb::Schema::MedicalEntity /;


use MooX::JSON_LD 'MedicalIndication';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v7.0.4';

=encoding utf8

=head1 DESCRIPTION

A condition or factor that indicates use of a medical therapy, including
signs, symptoms, risk factors, anatomical states, etc.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::MedicalEntity>

=cut

1;
