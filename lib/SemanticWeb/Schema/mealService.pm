use utf8;

package SemanticWeb::Schema::mealService;

# ABSTRACT: Description of the meals that will be provided or available for purchase.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'mealService';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Description of the meals that will be provided or available for purchase.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
