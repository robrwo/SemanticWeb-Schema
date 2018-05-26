package LDF::Schema::ApartmentComplex;

# ABSTRACT: Residence type: Apartment complex.

use Moo;

extends qw/ LDF::Schema::Residence /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

Residence type: Apartment complex.




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'ApartmentComplex' }



=head1 SEE ALSO



L<LDF::Schema::Residence>

=cut

1;
