use utf8;

package SemanticWeb::Schema::itemCondition;

# ABSTRACT: A predefined value from OfferItemCondition specifying the condition of the product or service

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'itemCondition';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A predefined value from OfferItemCondition specifying the condition of the
product or service, or the products or services included in the offer. Also
used for product return policies to specify the condition of products
accepted for returns.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
