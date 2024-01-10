use utf8;

package SemanticWeb::Schema::numAdults;

# ABSTRACT: The number of adults staying in the unit.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'numAdults';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The number of adults staying in the unit.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
