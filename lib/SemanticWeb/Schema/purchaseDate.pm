use utf8;

package SemanticWeb::Schema::purchaseDate;

# ABSTRACT: The date the item, e

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'purchaseDate';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The date the item, e.g. vehicle, was purchased by the current owner.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
