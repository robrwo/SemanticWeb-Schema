use utf8;

package SemanticWeb::Schema::measuredProperty;

# ABSTRACT: The measuredProperty of an [[Observation]]

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'measuredProperty';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The measuredProperty of an L<SemanticWeb::Schema::Observation>, typically via its L<SemanticWeb::Schema::StatisticalVariable>. There are various kinds of applicable L<SemanticWeb::Schema::Property>: a schema.org property, a property from other RDF-compatible systems, e.g. W3C RDF Data Cube, Data Commons, Wikidata, or schema.org extensions such as L<GS1's|https://www.gs1.org/voc/?show=properties>.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
