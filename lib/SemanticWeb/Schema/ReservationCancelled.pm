use utf8;

package SemanticWeb::Schema::ReservationCancelled;

# ABSTRACT: The status for a previously confirmed reservation that is now cancelled.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'ReservationCancelled';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The status for a previously confirmed reservation that is now cancelled.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
