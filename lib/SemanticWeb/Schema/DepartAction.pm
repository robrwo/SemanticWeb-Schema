use utf8;

package SemanticWeb::Schema::DepartAction;

# ABSTRACT: The act of departing from a place

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::MoveAction /;


use MooX::JSON_LD 'DepartAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The act of departing from a place. An agent departs from a fromLocation for
a destination, optionally with participants.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::MoveAction>

=cut

1;
