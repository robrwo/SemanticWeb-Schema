use utf8;

package SemanticWeb::Schema::QuoteAction;

# ABSTRACT: An agent quotes/estimates/appraises an object/product/service with a price at a location/store.

use Moo;

extends qw/ SemanticWeb::Schema::TradeAction /;


use MooX::JSON_LD 'QuoteAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.1.0';

=encoding utf8

=head1 DESCRIPTION

An agent quotes/estimates/appraises an object/product/service with a price
at a location/store.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::TradeAction>

=cut

1;
