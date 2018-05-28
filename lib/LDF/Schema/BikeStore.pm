package LDF::Schema::BikeStore;

# ABSTRACT: A bike store.

use Moo;

extends qw/ LDF::Schema::Store /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A bike store.




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'BikeStore' }



=head1 SEE ALSO



L<LDF::Schema::Store>

=cut

1;
