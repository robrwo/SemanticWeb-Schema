use utf8;

package SemanticWeb::Schema::DepartAction;

# ABSTRACT: The act of departing from a place

use Moo;

extends qw/ SemanticWeb::Schema::MoveAction /;


use MooX::JSON_LD 'DepartAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.3';

=encoding utf8

=head1 DESCRIPTION

The act of departing from a place. An agent departs from an fromLocation
for a destination, optionally with participants.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::MoveAction>

=cut

1;
