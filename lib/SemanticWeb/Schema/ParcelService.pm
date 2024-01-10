use utf8;

package SemanticWeb::Schema::ParcelService;

# ABSTRACT: A private parcel service as the delivery mode available for a certain offer

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'ParcelService';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A private parcel service as the delivery mode available for a certain offer.

Commonly used values:

=over

=item *

http://purl.org/goodrelations/v1#DHL


=item *

http://purl.org/goodrelations/v1#FederalExpress


=item *

http://purl.org/goodrelations/v1#UPS


=back



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
