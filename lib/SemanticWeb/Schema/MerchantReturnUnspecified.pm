use utf8;

package SemanticWeb::Schema::MerchantReturnUnspecified;

# ABSTRACT: Specifies that a product return policy is not provided.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'MerchantReturnUnspecified';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Specifies that a product return policy is not provided.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
