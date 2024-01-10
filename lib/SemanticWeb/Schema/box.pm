use utf8;

package SemanticWeb::Schema::box;

# ABSTRACT: A box is the area enclosed by the rectangle formed by two points

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'box';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A box is the area enclosed by the rectangle formed by two points. The first
point is the lower corner, the second point is the upper corner. A box is
expressed as two points separated by a space character.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
