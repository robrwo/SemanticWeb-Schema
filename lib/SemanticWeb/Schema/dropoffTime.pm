use utf8;

package SemanticWeb::Schema::dropoffTime;

# ABSTRACT: When a rental car can be dropped off.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'dropoffTime';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

When a rental car can be dropped off.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
