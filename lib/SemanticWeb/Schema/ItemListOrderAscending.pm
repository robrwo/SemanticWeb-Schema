use utf8;

package SemanticWeb::Schema::ItemListOrderAscending;

# ABSTRACT: An ItemList ordered with lower values listed first.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'ItemListOrderAscending';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

An ItemList ordered with lower values listed first.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
