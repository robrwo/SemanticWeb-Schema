use utf8;

package SemanticWeb::Schema::constraintProperty;

# ABSTRACT: Indicates a property used as a constraint

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'constraintProperty';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Indicates a property used as a constraint. For example, in the definition of a L<SemanticWeb::Schema::StatisticalVariable>. The value is a property, either from within Schema.org or from other compatible (e.g. RDF) systems such as DataCommons.org or Wikidata.org. 



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
