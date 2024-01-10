use utf8;

package SemanticWeb::Schema::recipeIngredient;

# ABSTRACT: A single ingredient used in the recipe, e

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'recipeIngredient';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A single ingredient used in the recipe, e.g. sugar, flour or garlic.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
