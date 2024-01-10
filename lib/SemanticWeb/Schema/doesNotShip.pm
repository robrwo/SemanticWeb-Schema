use utf8;

package SemanticWeb::Schema::doesNotShip;

# ABSTRACT: Indicates when shipping to a particular [[shippingDestination]] is not available.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'doesNotShip';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Indicates when shipping to a particular [[shippingDestination]] is not available.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
