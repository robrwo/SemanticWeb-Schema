package LDF::Schema::ArtGallery;

# ABSTRACT: An art gallery.

use Moo;

extends qw/ LDF::Schema::EntertainmentBusiness /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

An art gallery.




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'ArtGallery' }



=head1 SEE ALSO



L<LDF::Schema::EntertainmentBusiness>

=cut

1;
