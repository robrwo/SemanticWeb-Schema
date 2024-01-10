use utf8;

package SemanticWeb::Schema::deliveryTime;

# ABSTRACT: The total delay between the receipt of the order and the goods reaching the final customer.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'deliveryTime';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The total delay between the receipt of the order and the goods reaching the
final customer.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
