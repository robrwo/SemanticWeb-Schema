use utf8;

package SemanticWeb::Schema::recipeYield;

# ABSTRACT: The quantity produced by the recipe (for example

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'recipeYield';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The quantity produced by the recipe (for example, number of people served,
number of servings, etc).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
