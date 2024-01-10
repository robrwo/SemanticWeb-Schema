use utf8;

package SemanticWeb::Schema::departureBusStop;

# ABSTRACT: The stop or station from which the bus departs.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'departureBusStop';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The stop or station from which the bus departs.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
