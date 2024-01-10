use utf8;

package SemanticWeb::Schema::itemDefectReturnLabelSource;

# ABSTRACT: The method (from an enumeration) by which the customer obtains a return shipping label for a defect product.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'itemDefectReturnLabelSource';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The method (from an enumeration) by which the customer obtains a return
shipping label for a defect product.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
