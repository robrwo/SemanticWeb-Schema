use utf8;

package SemanticWeb::Schema::Dentist;

# ABSTRACT: A dentist.

use Moo;

extends qw/ SemanticWeb::Schema::MedicalBusiness SemanticWeb::Schema::LocalBusiness SemanticWeb::Schema::MedicalOrganization /;


use MooX::JSON_LD 'Dentist';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.6.0';

=encoding utf8

=head1 DESCRIPTION

A dentist.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::MedicalOrganization>

=cut

1;
