use utf8;

package SemanticWeb::Schema::PreOrderAction;

# ABSTRACT: An agent orders a (not yet released) object/product/service to be delivered/sent.

use Moo;

extends qw/ SemanticWeb::Schema::TradeAction /;


use MooX::JSON_LD 'PreOrderAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.8.0';

=encoding utf8

=head1 DESCRIPTION

An agent orders a (not yet released) object/product/service to be
delivered/sent.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::TradeAction>

=cut

1;
