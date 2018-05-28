package SemanticWeb::Schema::Barcode;

# ABSTRACT: An image of a visual machine-readable code such as a barcode or QR code.

use Moo;

extends qw/ SemanticWeb::Schema::ImageObject /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

An image of a visual machine-readable code such as a barcode or QR code.




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'Barcode' }



=head1 SEE ALSO



L<SemanticWeb::Schema::ImageObject>

=cut

1;
