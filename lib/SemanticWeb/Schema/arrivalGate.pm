use utf8;

package SemanticWeb::Schema::arrivalGate;

# ABSTRACT: Identifier of the flight's arrival gate.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'arrivalGate';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Identifier of the flight's arrival gate.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
