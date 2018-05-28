package SemanticWeb::Schema::Dentist;

# ABSTRACT: A dentist.

use Moo;

extends qw/ SemanticWeb::Schema::LocalBusiness SemanticWeb::Schema::MedicalOrganization /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A dentist.




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'Dentist' }



=head1 SEE ALSO



L<SemanticWeb::Schema::MedicalOrganization>

=cut

1;
