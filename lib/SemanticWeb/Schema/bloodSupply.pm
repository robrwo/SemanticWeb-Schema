use utf8;

package SemanticWeb::Schema::bloodSupply;

# ABSTRACT: The blood vessel that carries blood from the heart to the muscle.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'bloodSupply';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The blood vessel that carries blood from the heart to the muscle.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
