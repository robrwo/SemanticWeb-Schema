use utf8;

package SemanticWeb::Schema::Crematorium;

# ABSTRACT: A crematorium.

use Moo;

extends qw/ SemanticWeb::Schema::CivicStructure /;


use MooX::JSON_LD 'Crematorium';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v14.0.0';

=encoding utf8

=head1 DESCRIPTION

A crematorium.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::CivicStructure>

=cut

1;
