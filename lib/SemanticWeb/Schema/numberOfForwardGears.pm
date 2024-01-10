use utf8;

package SemanticWeb::Schema::numberOfForwardGears;

# ABSTRACT: The total number of forward gears available for the transmission system of the vehicle

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'numberOfForwardGears';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The total number of forward gears available for the transmission system of
the vehicle. Typical unit code(s): C62.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
