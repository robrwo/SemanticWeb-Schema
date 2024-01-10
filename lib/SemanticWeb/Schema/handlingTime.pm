use utf8;

package SemanticWeb::Schema::handlingTime;

# ABSTRACT: The typical delay between the receipt of the order and the goods either leaving the warehouse or being prepared for pickup

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'handlingTime';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The typical delay between the receipt of the order and the goods either
leaving the warehouse or being prepared for pickup, in case the delivery
method is on site pickup. Typical properties: minValue, maxValue, unitCode
(d for DAY). This is by common convention assumed to mean business days (if
a unitCode is used, coded as "d"), i.e. only counting days when the
business normally operates.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
