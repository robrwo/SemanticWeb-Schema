use utf8;

package SemanticWeb::Schema::ItemListOrderType;

# ABSTRACT: Enumerated for values for itemListOrder for indicating how an ordered ItemList is organized.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::Enumeration /;


use MooX::JSON_LD 'ItemListOrderType';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.1';

=encoding utf8

=head1 DESCRIPTION

Enumerated for values for itemListOrder for indicating how an ordered
ItemList is organized.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Enumeration>

=cut

1;
