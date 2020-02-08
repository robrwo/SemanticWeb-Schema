use utf8;

package SemanticWeb::Schema::GroceryStore;

# ABSTRACT: A grocery store.

use Moo;

extends qw/ SemanticWeb::Schema::Store /;


use MooX::JSON_LD 'GroceryStore';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v6.0.2';

=encoding utf8

=head1 DESCRIPTION

A grocery store.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Store>

=cut

1;
