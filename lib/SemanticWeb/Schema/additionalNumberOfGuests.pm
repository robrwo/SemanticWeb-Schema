use utf8;

package SemanticWeb::Schema::additionalNumberOfGuests;

# ABSTRACT: If responding yes

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'additionalNumberOfGuests';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

If responding yes, the number of guests who will attend in addition to the
invitee.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
