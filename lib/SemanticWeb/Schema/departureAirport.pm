use utf8;

package SemanticWeb::Schema::departureAirport;

# ABSTRACT: The airport where the flight originates.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'departureAirport';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The airport where the flight originates.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
