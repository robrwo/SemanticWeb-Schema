use utf8;

package SemanticWeb::Schema::materialExtent;

# ABSTRACT: The quantity of the materials being described or an expression of the physical space they occupy.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'materialExtent';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The quantity of the materials being described or an expression of the
physical space they occupy.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
