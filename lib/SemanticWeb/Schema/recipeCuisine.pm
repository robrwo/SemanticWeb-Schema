use utf8;

package SemanticWeb::Schema::recipeCuisine;

# ABSTRACT: The cuisine of the recipe (for example

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'recipeCuisine';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The cuisine of the recipe (for example, French or Ethiopian).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
