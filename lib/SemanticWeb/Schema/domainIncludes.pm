use utf8;

package SemanticWeb::Schema::domainIncludes;

# ABSTRACT: Relates a property to a class that is (one of) the type(s) the property is expected to be used on.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'domainIncludes';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Relates a property to a class that is (one of) the type(s) the property is
expected to be used on.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
