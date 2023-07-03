use utf8;

package SemanticWeb::Schema::Pharmacy;

# ABSTRACT: A pharmacy or drugstore.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::MedicalBusiness SemanticWeb::Schema::MedicalOrganization /;


use MooX::JSON_LD 'Pharmacy';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v22.0.1';

=encoding utf8

=head1 DESCRIPTION

A pharmacy or drugstore.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::MedicalOrganization>

=cut

1;
