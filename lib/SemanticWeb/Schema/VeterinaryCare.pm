use utf8;

package SemanticWeb::Schema::VeterinaryCare;

# ABSTRACT: A vet's office.

use Moo;

extends qw/ SemanticWeb::Schema::MedicalOrganization /;


use MooX::JSON_LD 'VeterinaryCare';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.7.0';

=encoding utf8

=head1 DESCRIPTION

A vet's office.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::MedicalOrganization>

=cut

1;
