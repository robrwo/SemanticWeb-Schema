use utf8;

package SemanticWeb::Schema::Dentist;

# ABSTRACT: A dentist.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::MedicalBusiness SemanticWeb::Schema::MedicalOrganization /;


use MooX::JSON_LD 'Dentist';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A dentist.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::MedicalOrganization>

=cut

1;
