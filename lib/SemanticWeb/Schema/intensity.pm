use utf8;

package SemanticWeb::Schema::intensity;

# ABSTRACT: Quantitative measure gauging the degree of force involved in the exercise

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'intensity';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Quantitative measure gauging the degree of force involved in the exercise,
for example, heartbeats per minute. May include the velocity of the
movement.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
