use utf8;

package SemanticWeb::Schema::Museum;

# ABSTRACT: A museum.

use Moo;

extends qw/ SemanticWeb::Schema::CivicStructure /;


use MooX::JSON_LD 'Museum';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.5';

=encoding utf8

=head1 DESCRIPTION

A museum.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::CivicStructure>

=cut

1;
