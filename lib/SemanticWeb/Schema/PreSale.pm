use utf8;

package SemanticWeb::Schema::PreSale;

# ABSTRACT: Indicates that the item is available for ordering and delivery before general availability.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'PreSale';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Indicates that the item is available for ordering and delivery before
general availability.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
