package SemanticWeb::Schema::AdministrativeArea;

# ABSTRACT: A geographical region

use Moo;

extends qw/ SemanticWeb::Schema::Place /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A geographical region, typically under the jurisdiction of a particular
government.




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'AdministrativeArea' }



=head1 SEE ALSO



L<SemanticWeb::Schema::Place>

=cut

1;
