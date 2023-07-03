use utf8;

package SemanticWeb::Schema::Aquarium;

# ABSTRACT: Aquarium.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::CivicStructure /;


use MooX::JSON_LD 'Aquarium';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v22.0.0';

=encoding utf8

=head1 DESCRIPTION

Aquarium.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::CivicStructure>

=cut

1;
