use utf8;

package SemanticWeb::Schema::billingStart;

# ABSTRACT: Specifies after how much time this price (or price component) becomes valid and billing starts

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'billingStart';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Specifies after how much time this price (or price component) becomes valid
and billing starts. Can be used, for example, to model a price increase
after the first year of a subscription. The unit of measurement is
specified by the unitCode property.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
