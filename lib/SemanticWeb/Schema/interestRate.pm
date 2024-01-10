use utf8;

package SemanticWeb::Schema::interestRate;

# ABSTRACT: The interest rate

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'interestRate';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The interest rate, charged or paid, applicable to the financial product.
Note: This is different from the calculated annualPercentageRate.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
