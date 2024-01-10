use utf8;

package SemanticWeb::Schema::Downpayment;

# ABSTRACT: Represents the downpayment (up-front payment) price component of the total price for an offered product that has additional installment payments.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'Downpayment';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Represents the downpayment (up-front payment) price component of the total
price for an offered product that has additional installment payments.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
