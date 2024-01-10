use utf8;

package SemanticWeb::Schema::businessFunction;

# ABSTRACT: The business function (e

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'businessFunction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The business function (e.g. sell, lease, repair, dispose) of the offer or
component of a bundle (TypeAndQuantityNode). The default is
http://purl.org/goodrelations/v1#Sell.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
