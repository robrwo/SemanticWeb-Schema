package SemanticWeb::Schema::PerformingArtsTheater;

# ABSTRACT: A theater or other performing art center.

use Moo;

extends qw/ SemanticWeb::Schema::CivicStructure /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A theater or other performing art center.




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'PerformingArtsTheater' }



=head1 SEE ALSO



L<SemanticWeb::Schema::CivicStructure>

=cut

1;
