use utf8;

package SemanticWeb::Schema::Bridge;

# ABSTRACT: A bridge.

use Moo;

extends qw/ SemanticWeb::Schema::CivicStructure /;


use MooX::JSON_LD 'Bridge';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.2';

=encoding utf8

=head1 DESCRIPTION

A bridge.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::CivicStructure>

=cut

1;
