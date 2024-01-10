use utf8;

package SemanticWeb::Schema::priceValidUntil;

# ABSTRACT: The date after which the price is no longer available.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'priceValidUntil';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The date after which the price is no longer available.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
