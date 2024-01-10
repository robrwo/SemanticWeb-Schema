use utf8;

package SemanticWeb::Schema::RightHandDriving;

# ABSTRACT: The steering position is on the right side of the vehicle (viewed from the main direction of driving).

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'RightHandDriving';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The steering position is on the right side of the vehicle (viewed from the
main direction of driving).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
