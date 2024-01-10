use utf8;

package SemanticWeb::Schema::CoOp;

# ABSTRACT: Play mode: CoOp

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'CoOp';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Play mode: CoOp. Co-operative games, where you play on the same team with
friends.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
