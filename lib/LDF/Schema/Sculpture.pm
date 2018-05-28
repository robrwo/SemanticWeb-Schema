package LDF::Schema::Sculpture;

# ABSTRACT: A piece of sculpture.

use Moo;

extends qw/ LDF::Schema::CreativeWork /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A piece of sculpture.




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'Sculpture' }



=head1 SEE ALSO



L<LDF::Schema::CreativeWork>

=cut

1;
