use utf8;

package SemanticWeb::Schema::Longitudinal;

# ABSTRACT: Unlike cross-sectional studies

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'Longitudinal';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Unlike cross-sectional studies, longitudinal studies track the same people,
and therefore the differences observed in those people are less likely to
be the result of cultural differences across generations. Longitudinal
studies are also used in medicine to uncover predictors of certain
diseases.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
