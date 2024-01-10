use utf8;

package SemanticWeb::Schema::bookingAgent;

# ABSTRACT: 'bookingAgent' is an out-dated term indicating a 'broker' that serves as a booking agent.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'bookingAgent';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

'bookingAgent' is an out-dated term indicating a 'broker' that serves as a
booking agent.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
