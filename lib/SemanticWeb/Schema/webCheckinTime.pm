use utf8;

package SemanticWeb::Schema::webCheckinTime;

# ABSTRACT: The time when a passenger can check into the flight online.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'webCheckinTime';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The time when a passenger can check into the flight online.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
