use utf8;

package SemanticWeb::Schema::MedicalAudience;

# ABSTRACT: Target audiences for medical web pages

use Moo;

extends qw/ SemanticWeb::Schema::PeopleAudience SemanticWeb::Schema::MedicalEnumeration SemanticWeb::Schema::Audience /;


use MooX::JSON_LD 'MedicalAudience';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.5.0';

=encoding utf8

=head1 DESCRIPTION

Target audiences for medical web pages. Enumerated type.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Audience>

=cut

1;
