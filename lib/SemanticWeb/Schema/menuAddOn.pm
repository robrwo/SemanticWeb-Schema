use utf8;

package SemanticWeb::Schema::menuAddOn;

# ABSTRACT: Additional menu item(s) such as a side dish of salad or side order of fries that can be added to this menu item

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'menuAddOn';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Additional menu item(s) such as a side dish of salad or side order of fries
that can be added to this menu item. Additionally it can be a menu section
containing allowed add-on menu items for this menu item.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
