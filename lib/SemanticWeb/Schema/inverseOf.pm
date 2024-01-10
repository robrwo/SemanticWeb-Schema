use utf8;

package SemanticWeb::Schema::inverseOf;

# ABSTRACT: Relates a property to a property that is its inverse

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'inverseOf';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Relates a property to a property that is its inverse. Inverse properties
relate the same pairs of items to each other, but in reversed direction.
For example, the 'alumni' and 'alumniOf' properties are inverseOf each
other. Some properties don't have explicit inverses; in these situations
RDFa and JSON-LD syntax for reverse properties can be used.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
