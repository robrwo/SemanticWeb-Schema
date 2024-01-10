use utf8;

package SemanticWeb::Schema::numberOfAirbags;

# ABSTRACT: The number or type of airbags in the vehicle.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'numberOfAirbags';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The number or type of airbags in the vehicle.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
