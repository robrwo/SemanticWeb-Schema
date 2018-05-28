package LDF::Schema::Car;

# ABSTRACT: A car is a wheeled

use Moo;

extends qw/ LDF::Schema::Vehicle /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A car is a wheeled, self-powered motor vehicle used for transportation.




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'Car' }



=head1 SEE ALSO



L<LDF::Schema::Vehicle>

=cut

1;
