use utf8;

package SemanticWeb::Schema::healthPlanCoinsuranceRate;

# ABSTRACT: The rate of coinsurance expressed as a number between 0

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'healthPlanCoinsuranceRate';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The rate of coinsurance expressed as a number between 0.0 and 1.0.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
