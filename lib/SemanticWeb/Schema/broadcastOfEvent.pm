use utf8;

package SemanticWeb::Schema::broadcastOfEvent;

# ABSTRACT: The event being broadcast such as a sporting event or awards ceremony.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'broadcastOfEvent';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The event being broadcast such as a sporting event or awards ceremony.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
