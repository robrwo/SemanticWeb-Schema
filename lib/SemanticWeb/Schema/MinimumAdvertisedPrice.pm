use utf8;

package SemanticWeb::Schema::MinimumAdvertisedPrice;

# ABSTRACT: Represents the minimum advertised price ("MAP") (as dictated by the manufacturer) of an offered product.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'MinimumAdvertisedPrice';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Represents the minimum advertised price ("MAP") (as dictated by the
manufacturer) of an offered product.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
