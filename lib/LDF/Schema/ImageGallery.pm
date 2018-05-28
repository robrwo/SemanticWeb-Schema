package LDF::Schema::ImageGallery;

# ABSTRACT: Web page type: Image gallery page.

use Moo;

extends qw/ LDF::Schema::CollectionPage /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

Web page type: Image gallery page.




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'ImageGallery' }



=head1 SEE ALSO



L<LDF::Schema::CollectionPage>

=cut

1;
