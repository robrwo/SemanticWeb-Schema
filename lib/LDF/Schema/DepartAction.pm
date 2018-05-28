package LDF::Schema::DepartAction;

# ABSTRACT: The act of departing from a place

use Moo;

extends qw/ LDF::Schema::MoveAction /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

The act of departing from a place. An agent departs from an fromLocation
for a destination, optionally with participants.




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'DepartAction' }



=head1 SEE ALSO



L<LDF::Schema::MoveAction>

=cut

1;
