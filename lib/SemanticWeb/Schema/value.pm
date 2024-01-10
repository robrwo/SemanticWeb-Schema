use utf8;

package SemanticWeb::Schema::value;

# ABSTRACT: The value of a [[QuantitativeValue]] (including [[Observation]]) or property value node

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'value';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The value of a L<SemanticWeb::Schema::QuantitativeValue> (including L<SemanticWeb::Schema::Observation>) or property value node.

=over

=item *

For L<SemanticWeb::Schema::QuantitativeValue> and L<SemanticWeb::Schema::MonetaryAmount>, the recommended type for values is 'Number'.


=item *

For L<SemanticWeb::Schema::PropertyValue>, it can be 'Text', 'Number', 'Boolean', or 'StructuredValue'.


=item *

Use values from 0123456789 (Unicode 'DIGIT ZERO' (U+0030) to 'DIGIT NINE' (U+0039)) rather than superficially similar Unicode symbols.


=item *

Use '.' (Unicode 'FULL STOP' (U+002E)) rather than ',' to indicate a decimal point. Avoid using these symbols as a readability separator.


=back



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
