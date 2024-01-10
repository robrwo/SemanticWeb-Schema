use utf8;

package SemanticWeb::Schema::ticketToken;

# ABSTRACT: Reference to an asset (e

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'ticketToken';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Reference to an asset (e.g., Barcode, QR code image or PDF) usable for
entrance.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
