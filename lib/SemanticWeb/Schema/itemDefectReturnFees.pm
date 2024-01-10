use utf8;

package SemanticWeb::Schema::itemDefectReturnFees;

# ABSTRACT: The type of return fees for returns of defect products.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'itemDefectReturnFees';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The type of return fees for returns of defect products.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
