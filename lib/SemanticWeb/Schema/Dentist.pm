use utf8;

package SemanticWeb::Schema::Dentist;

# ABSTRACT: A dentist.

use Moo;

extends qw/ SemanticWeb::Schema::MedicalOrganization SemanticWeb::Schema::MedicalBusiness SemanticWeb::Schema::LocalBusiness /;


use MooX::JSON_LD 'Dentist';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.5.2';

=encoding utf8

=head1 DESCRIPTION

A dentist.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::LocalBusiness>

=cut

1;
