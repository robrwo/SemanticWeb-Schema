use utf8;

package SemanticWeb::Schema::BusinessFunction;

# ABSTRACT: The business function specifies the type of activity or access (i

use Moo;

extends qw/ SemanticWeb::Schema::Enumeration /;


use MooX::JSON_LD 'BusinessFunction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v13.0.1';

=encoding utf8

=head1 DESCRIPTION

The business function specifies the type of activity or access (i.e., the bundle of rights) offered by the organization or business person through the offer. Typical are sell, rental or lease, maintenance or repair, manufacture / produce, recycle / dispose, engineering / construction, or installation. Proprietary specifications of access rights are also instances of this class.

Commonly used values:

=over

=item *

http://purl.org/goodrelations/v1#ConstructionInstallation


=item *

http://purl.org/goodrelations/v1#Dispose


=item *

http://purl.org/goodrelations/v1#LeaseOut


=item *

http://purl.org/goodrelations/v1#Maintain


=item *

http://purl.org/goodrelations/v1#ProvideService


=item *

http://purl.org/goodrelations/v1#Repair


=item *

http://purl.org/goodrelations/v1#Sell


=item *

http://purl.org/goodrelations/v1#Buy


=back



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Enumeration>

=cut

1;
