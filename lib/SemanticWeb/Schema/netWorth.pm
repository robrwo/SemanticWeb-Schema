use utf8;

package SemanticWeb::Schema::netWorth;

# ABSTRACT: The total financial value of the person as calculated by subtracting assets from liabilities.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'netWorth';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The total financial value of the person as calculated by subtracting assets
from liabilities.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
