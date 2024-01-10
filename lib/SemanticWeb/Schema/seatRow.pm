use utf8;

package SemanticWeb::Schema::seatRow;

# ABSTRACT: The row location of the reserved seat (e

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'seatRow';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The row location of the reserved seat (e.g., B).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
