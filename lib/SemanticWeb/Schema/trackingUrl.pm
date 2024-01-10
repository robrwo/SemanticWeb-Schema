use utf8;

package SemanticWeb::Schema::trackingUrl;

# ABSTRACT: Tracking url for the parcel delivery.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'trackingUrl';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Tracking url for the parcel delivery.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
