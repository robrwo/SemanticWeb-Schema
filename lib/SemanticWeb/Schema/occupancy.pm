use utf8;

package SemanticWeb::Schema::occupancy;

# ABSTRACT: The allowed total occupancy for the accommodation in persons (including infants etc)

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'occupancy';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The allowed total occupancy for the accommodation in persons (including
infants etc). For individual accommodations, this is not necessarily the
legal maximum but defines the permitted usage as per the contractual
agreement (e.g. a double room used by a single person). Typical unit
code(s): C62 for person.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
