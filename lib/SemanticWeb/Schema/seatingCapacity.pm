use utf8;

package SemanticWeb::Schema::seatingCapacity;

# ABSTRACT: The number of persons that can be seated (e

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'seatingCapacity';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The number of persons that can be seated (e.g. in a vehicle), both in terms
of the physical space available, and in terms of limitations set by law.
Typical unit code(s): C62 for persons.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
