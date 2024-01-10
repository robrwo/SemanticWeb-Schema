use utf8;

package SemanticWeb::Schema::shippingDestination;

# ABSTRACT: indicates (possibly multiple) shipping destinations

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'shippingDestination';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

indicates (possibly multiple) shipping destinations. These can be defined
in several ways, e.g. postalCode ranges.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
