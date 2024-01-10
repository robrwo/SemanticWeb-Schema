use utf8;

package SemanticWeb::Schema::arrivalBoatTerminal;

# ABSTRACT: The terminal or port from which the boat arrives.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'arrivalBoatTerminal';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The terminal or port from which the boat arrives.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
