use utf8;

package SemanticWeb::Schema::sku;

# ABSTRACT: The Stock Keeping Unit (SKU), i

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'sku';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The Stock Keeping Unit (SKU), i.e. a merchant-specific identifier for a
product or service, or the product to which the offer refers.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
