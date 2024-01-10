use utf8;

package SemanticWeb::Schema::hasPOS;

# ABSTRACT: Points-of-Sales operated by the organization or person.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'hasPOS';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Points-of-Sales operated by the organization or person.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
