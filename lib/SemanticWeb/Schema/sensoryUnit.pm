use utf8;

package SemanticWeb::Schema::sensoryUnit;

# ABSTRACT: The neurological pathway extension that inputs and sends information to the brain or spinal cord.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'sensoryUnit';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The neurological pathway extension that inputs and sends information to the
brain or spinal cord.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
