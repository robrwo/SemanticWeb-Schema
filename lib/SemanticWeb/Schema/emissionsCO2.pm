use utf8;

package SemanticWeb::Schema::emissionsCO2;

# ABSTRACT: The CO2 emissions in g/km

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'emissionsCO2';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The CO2 emissions in g/km. When used in combination with a
QuantitativeValue, put "g/km" into the unitText property of that value,
since there is no UN/CEFACT Common Code for "g/km".




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
