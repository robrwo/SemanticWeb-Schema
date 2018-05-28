package LDF::Schema::AutoWash;

# ABSTRACT: A car wash business.

use Moo;

extends qw/ LDF::Schema::AutomotiveBusiness /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A car wash business.




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'AutoWash' }



=head1 SEE ALSO



L<LDF::Schema::AutomotiveBusiness>

=cut

1;
