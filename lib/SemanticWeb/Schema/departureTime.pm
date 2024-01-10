use utf8;

package SemanticWeb::Schema::departureTime;

# ABSTRACT: The expected departure time.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'departureTime';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The expected departure time.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
