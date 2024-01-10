use utf8;

package SemanticWeb::Schema::rangeIncludes;

# ABSTRACT: Relates a property to a class that constitutes (one of) the expected type(s) for values of the property.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'rangeIncludes';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Relates a property to a class that constitutes (one of) the expected
type(s) for values of the property.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
