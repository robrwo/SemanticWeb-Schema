use utf8;

package SemanticWeb::Schema::membershipPointsEarned;

# ABSTRACT: The number of membership points earned by the member

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'membershipPointsEarned';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The number of membership points earned by the member. If necessary, the
unitText can be used to express the units the points are issued in. (E.g.
stars, miles, etc.)




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
