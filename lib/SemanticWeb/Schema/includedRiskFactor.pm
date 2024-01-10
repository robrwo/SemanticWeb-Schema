use utf8;

package SemanticWeb::Schema::includedRiskFactor;

# ABSTRACT: A modifiable or non-modifiable risk factor included in the calculation

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'includedRiskFactor';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A modifiable or non-modifiable risk factor included in the calculation,
e.g. age, coexisting condition.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
