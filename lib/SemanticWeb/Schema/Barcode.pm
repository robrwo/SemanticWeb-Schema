use utf8;

package SemanticWeb::Schema::Barcode;

# ABSTRACT: An image of a visual machine-readable code such as a barcode or QR code.

use Moo;

extends qw/ SemanticWeb::Schema::ImageObject /;


use MooX::JSON_LD 'Barcode';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v11.0.0';

=encoding utf8

=head1 DESCRIPTION

An image of a visual machine-readable code such as a barcode or QR code.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::ImageObject>

=cut

1;
