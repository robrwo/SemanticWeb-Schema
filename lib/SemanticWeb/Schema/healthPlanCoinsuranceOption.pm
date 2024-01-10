use utf8;

package SemanticWeb::Schema::healthPlanCoinsuranceOption;

# ABSTRACT: Whether the coinsurance applies before or after deductible

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'healthPlanCoinsuranceOption';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Whether the coinsurance applies before or after deductible, etc. TODO: Is
this a closed set?




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
