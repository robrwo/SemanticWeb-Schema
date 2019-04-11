use utf8;

package SemanticWeb::Schema::MotorcycleDealer;

# ABSTRACT: A motorcycle dealer.

use Moo;

extends qw/ SemanticWeb::Schema::AutomotiveBusiness /;


use MooX::JSON_LD 'MotorcycleDealer';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.5.2';

=encoding utf8

=head1 DESCRIPTION

A motorcycle dealer.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::AutomotiveBusiness>

=cut

1;
