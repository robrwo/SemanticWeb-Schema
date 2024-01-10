use utf8;

package SemanticWeb::Schema::drainsTo;

# ABSTRACT: The vasculature that the vein drains into.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'drainsTo';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The vasculature that the vein drains into.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
