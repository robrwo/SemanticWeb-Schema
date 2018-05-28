package LDF::Schema::OceanBodyOfWater;

# ABSTRACT: An ocean (for example, the Pacific).

use Moo;

extends qw/ LDF::Schema::BodyOfWater /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

An ocean (for example, the Pacific).




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'OceanBodyOfWater' }



=head1 SEE ALSO



L<LDF::Schema::BodyOfWater>

=cut

1;
