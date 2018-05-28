package LDF::Schema::BusinessEvent;

# ABSTRACT: Event type: Business event.

use Moo;

extends qw/ LDF::Schema::Event /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

Event type: Business event.




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'BusinessEvent' }



=head1 SEE ALSO



L<LDF::Schema::Event>

=cut

1;
