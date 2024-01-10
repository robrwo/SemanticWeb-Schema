use utf8;

package SemanticWeb::Schema::Installment;

# ABSTRACT: Represents the installment pricing component of the total price for an offered product.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'Installment';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Represents the installment pricing component of the total price for an
offered product.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
