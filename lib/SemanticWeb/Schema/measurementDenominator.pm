use utf8;

package SemanticWeb::Schema::measurementDenominator;

# ABSTRACT: Identifies the denominator variable when an observation represents a ratio or percentage.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'measurementDenominator';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Identifies the denominator variable when an observation represents a ratio
or percentage.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
