package LDF::Schema::Code;

# ABSTRACT: Computer programming source code

use Moo;

extends qw/ LDF::Schema::CreativeWork /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

Computer programming source code. Example: Full (compile ready) solutions,
code snippet samples, scripts, templates.




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'Code' }



=head1 SEE ALSO



L<LDF::Schema::CreativeWork>

=cut

1;
