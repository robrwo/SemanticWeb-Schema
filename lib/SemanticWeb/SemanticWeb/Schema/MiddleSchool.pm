package SemanticWeb::Schema::MiddleSchool;

# ABSTRACT: A middle school (typically for children aged around 11-14

use Moo;

extends qw/ SemanticWeb::Schema::EducationalOrganization /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A middle school (typically for children aged around 11-14, although this
varies somewhat).




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'MiddleSchool' }



=head1 SEE ALSO



L<SemanticWeb::Schema::EducationalOrganization>

=cut

1;
