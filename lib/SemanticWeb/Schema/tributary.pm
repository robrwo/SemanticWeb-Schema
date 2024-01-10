use utf8;

package SemanticWeb::Schema::tributary;

# ABSTRACT: The anatomical or organ system that the vein flows into; a larger structure that the vein connects to.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'tributary';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The anatomical or organ system that the vein flows into; a larger structure
that the vein connects to.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
