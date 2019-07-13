use utf8;

package SemanticWeb::Schema::ComedyEvent;

# ABSTRACT: Event type: Comedy event.

use Moo;

extends qw/ SemanticWeb::Schema::Event /;


use MooX::JSON_LD 'ComedyEvent';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.6.1';

=encoding utf8

=head1 DESCRIPTION

Event type: Comedy event.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Event>

=cut

1;
