use utf8;

package SemanticWeb::Schema::floorSize;

# ABSTRACT: The size of the accommodation, e

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'floorSize';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The size of the accommodation, e.g. in square meter or squarefoot. Typical
unit code(s): MTK for square meter, FTK for square foot, or YDK for square
yard.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
