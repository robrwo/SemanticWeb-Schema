use utf8;

package SemanticWeb::Schema::restockingFee;

# ABSTRACT: Use [[MonetaryAmount]] to specify a fixed restocking fee for product returns

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'restockingFee';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Use L<SemanticWeb::Schema::MonetaryAmount> to specify a fixed restocking fee for product returns, or use L<SemanticWeb::Schema::Number> to specify a percentage of the product price paid by the customer.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
