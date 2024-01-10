use utf8;

package SemanticWeb::Schema::commentTime;

# ABSTRACT: The time at which the UserComment was made.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'commentTime';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The time at which the UserComment was made.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
