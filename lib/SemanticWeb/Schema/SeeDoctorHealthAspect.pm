use utf8;

package SemanticWeb::Schema::SeeDoctorHealthAspect;

# ABSTRACT: Information about questions that may be asked

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'SeeDoctorHealthAspect';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Information about questions that may be asked, when to see a professional,
measures before seeing a doctor or content about the first consultation.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
