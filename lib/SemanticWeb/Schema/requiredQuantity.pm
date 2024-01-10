use utf8;

package SemanticWeb::Schema::requiredQuantity;

# ABSTRACT: The required quantity of the item(s).

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'requiredQuantity';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The required quantity of the item(s).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
