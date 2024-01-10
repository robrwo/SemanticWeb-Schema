use utf8;

package SemanticWeb::Schema::availability;

# ABSTRACT: The availability of this item—for example In stock

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'availability';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The availability of this item&#x2014;for example In stock, Out of stock,
Pre-order, etc.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
