package LDF::Schema::Reservoir;

# ABSTRACT: A reservoir of water

use Moo;

extends qw/ LDF::Schema::BodyOfWater /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A reservoir of water, typically an artificially created lake, like the Lake
Kariba reservoir.




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'Reservoir' }



=head1 SEE ALSO



L<LDF::Schema::BodyOfWater>

=cut

1;
