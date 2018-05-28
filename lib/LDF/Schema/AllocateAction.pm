package LDF::Schema::AllocateAction;

# ABSTRACT: The act of organizing tasks/objects/events by associating resources to it.

use Moo;

extends qw/ LDF::Schema::OrganizeAction /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

The act of organizing tasks/objects/events by associating resources to it.




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'AllocateAction' }



=head1 SEE ALSO



L<LDF::Schema::OrganizeAction>

=cut

1;
