use utf8;

package SemanticWeb::Schema::transitTime;

# ABSTRACT: The typical delay the order has been sent for delivery and the goods reach the final customer

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'transitTime';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The typical delay the order has been sent for delivery and the goods reach
the final customer. Typical properties: minValue, maxValue, unitCode (d for
DAY).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
