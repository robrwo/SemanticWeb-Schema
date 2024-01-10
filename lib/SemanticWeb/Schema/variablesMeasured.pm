use utf8;

package SemanticWeb::Schema::variablesMeasured;

# ABSTRACT: Originally named [[variablesMeasured]]

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'variablesMeasured';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Originally named [[variablesMeasured]], the [[variableMeasured]] property can indicate (repeated as necessary) the  variables that are measured in some dataset, either described as text or as pairs of identifier and description using PropertyValue.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
