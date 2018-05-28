package SemanticWeb::Schema::GovernmentOrganization;

# ABSTRACT: A governmental organization or agency.

use Moo;

extends qw/ SemanticWeb::Schema::Organization /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A governmental organization or agency.




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'GovernmentOrganization' }



=head1 SEE ALSO



L<SemanticWeb::Schema::Organization>

=cut

1;
