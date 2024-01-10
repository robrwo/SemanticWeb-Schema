use utf8;

package SemanticWeb::Schema::Dermatology;

# ABSTRACT: A specific branch of medical science that pertains to diagnosis and treatment of disorders of skin.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::MedicalBusiness /;


use MooX::JSON_LD 'Dermatology';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A specific branch of medical science that pertains to diagnosis and
treatment of disorders of skin.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::MedicalBusiness>

=cut

1;
