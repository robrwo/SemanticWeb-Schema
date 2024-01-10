use utf8;

package SemanticWeb::Schema::recipeInstructions;

# ABSTRACT: A step in making the recipe

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'recipeInstructions';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A step in making the recipe, in the form of a single item (document, video,
etc.) or an ordered list with HowToStep and/or HowToSection items.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
