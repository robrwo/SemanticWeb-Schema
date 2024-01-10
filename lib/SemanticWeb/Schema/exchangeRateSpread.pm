use utf8;

package SemanticWeb::Schema::exchangeRateSpread;

# ABSTRACT: The difference between the price at which a broker or other intermediary buys and sells foreign currency.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'exchangeRateSpread';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The difference between the price at which a broker or other intermediary
buys and sells foreign currency.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
