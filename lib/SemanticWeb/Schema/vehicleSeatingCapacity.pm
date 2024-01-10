use utf8;

package SemanticWeb::Schema::vehicleSeatingCapacity;

# ABSTRACT: The number of passengers that can be seated in the vehicle

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'vehicleSeatingCapacity';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The number of passengers that can be seated in the vehicle, both in terms
of the physical space available, and in terms of limitations set by law.
Typical unit code(s): C62 for persons.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
