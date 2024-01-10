use utf8;

package SemanticWeb::Schema::orderQuantity;

# ABSTRACT: The number of the item ordered

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'orderQuantity';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The number of the item ordered. If the property is not set, assume the
quantity is one.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
