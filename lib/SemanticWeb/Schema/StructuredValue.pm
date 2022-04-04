use utf8;

package SemanticWeb::Schema::StructuredValue;

# ABSTRACT: Structured values are used when the value of a property has a more complex structure than simply being a textual value or a reference to another thing.

use Moo;

extends qw/ SemanticWeb::Schema::Intangible /;


use MooX::JSON_LD 'StructuredValue';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v14.0.1';

=encoding utf8

=head1 DESCRIPTION

Structured values are used when the value of a property has a more complex
structure than simply being a textual value or a reference to another
thing.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Intangible>

=cut

1;
