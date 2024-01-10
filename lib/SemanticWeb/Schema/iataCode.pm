use utf8;

package SemanticWeb::Schema::iataCode;

# ABSTRACT: IATA identifier for an airline or airport.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'iataCode';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

IATA identifier for an airline or airport.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
