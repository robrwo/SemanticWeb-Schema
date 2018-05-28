package LDF::Schema::Landform;

# ABSTRACT: A landform or physical feature

use Moo;

extends qw/ LDF::Schema::Place /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A landform or physical feature. Landform elements include mountains,
plains, lakes, rivers, seascape and oceanic waterbody interface features
such as bays, peninsulas, seas and so forth, including sub-aqueous terrain
features such as submersed mountain ranges, volcanoes, and the great ocean
basins.




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'Landform' }



=head1 SEE ALSO



L<LDF::Schema::Place>

=cut

1;
