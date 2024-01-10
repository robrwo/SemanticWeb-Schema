use utf8;

package SemanticWeb::Schema::estimatedCost;

# ABSTRACT: The estimated cost of the supply or supplies consumed when performing instructions.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'estimatedCost';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The estimated cost of the supply or supplies consumed when performing
instructions.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
