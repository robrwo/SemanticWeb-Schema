use utf8;

package SemanticWeb::Schema::EUEnergyEfficiencyCategoryF;

# ABSTRACT: Represents EU Energy Efficiency Class F as defined in EU energy labeling regulations.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'EUEnergyEfficiencyCategoryF';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Represents EU Energy Efficiency Class F as defined in EU energy labeling
regulations.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
