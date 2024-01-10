use utf8;

package SemanticWeb::Schema::ProductReturnUnspecified;

# ABSTRACT: ProductReturnUnspecified: a product return policy is not specified here.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'ProductReturnUnspecified';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

ProductReturnUnspecified: a product return policy is not specified here.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
