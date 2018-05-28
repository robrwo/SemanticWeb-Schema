package LDF::Schema::QuoteAction;

# ABSTRACT: An agent quotes/estimates/appraises an object/product/service with a price at a location/store.

use Moo;

extends qw/ LDF::Schema::TradeAction /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

An agent quotes/estimates/appraises an object/product/service with a price
at a location/store.




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'QuoteAction' }



=head1 SEE ALSO



L<LDF::Schema::TradeAction>

=cut

1;
