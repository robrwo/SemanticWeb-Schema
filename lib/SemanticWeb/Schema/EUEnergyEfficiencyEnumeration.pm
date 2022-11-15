use utf8;

package SemanticWeb::Schema::EUEnergyEfficiencyEnumeration;

# ABSTRACT: Enumerates the EU energy efficiency classes A-G as well as A+

use Moo;

extends qw/ SemanticWeb::Schema::EnergyEfficiencyEnumeration /;


use MooX::JSON_LD 'EUEnergyEfficiencyEnumeration';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v15.0.1';

=encoding utf8

=head1 DESCRIPTION

Enumerates the EU energy efficiency classes A-G as well as A+, A++, and
A+++ as defined in EU directive 2017/1369.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::EnergyEfficiencyEnumeration>

=cut

1;
