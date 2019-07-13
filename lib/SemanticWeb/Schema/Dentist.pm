use utf8;

package SemanticWeb::Schema::Dentist;

# ABSTRACT: A dentist.

use Moo;

extends qw/ SemanticWeb::Schema::MedicalBusiness SemanticWeb::Schema::MedicalOrganization SemanticWeb::Schema::LocalBusiness /;


use MooX::JSON_LD 'Dentist';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.8.1';

=encoding utf8

=head1 DESCRIPTION

A dentist.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::LocalBusiness>

=cut

1;
