use utf8;

package SemanticWeb::Schema::observationPeriod;

# ABSTRACT: The length of time an Observation took place over

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'observationPeriod';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The length of time an Observation took place over. The format follows
`P[0-9]*[Y|M|D|h|m|s]`. For example, P1Y is Period 1 Year, P3M is Period 3
Months, P3h is Period 3 hours.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
