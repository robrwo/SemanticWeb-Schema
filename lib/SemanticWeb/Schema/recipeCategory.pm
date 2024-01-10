use utf8;

package SemanticWeb::Schema::recipeCategory;

# ABSTRACT: The category of the recipe—for example

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'recipeCategory';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The category of the recipe—for example, appetizer, entree, etc.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
