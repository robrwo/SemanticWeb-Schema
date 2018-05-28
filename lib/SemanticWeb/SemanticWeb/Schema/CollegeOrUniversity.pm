package SemanticWeb::Schema::CollegeOrUniversity;

# ABSTRACT: A college

use Moo;

extends qw/ SemanticWeb::Schema::EducationalOrganization /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A college, university, or other third-level educational institution.




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'CollegeOrUniversity' }



=head1 SEE ALSO



L<SemanticWeb::Schema::EducationalOrganization>

=cut

1;
