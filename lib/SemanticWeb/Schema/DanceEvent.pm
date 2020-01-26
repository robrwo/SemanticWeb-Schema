use utf8;

package SemanticWeb::Schema::DanceEvent;

# ABSTRACT: Event type: A social dance.

use Moo;

extends qw/ SemanticWeb::Schema::Event /;


use MooX::JSON_LD 'DanceEvent';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v6.0.0';

=encoding utf8

=head1 DESCRIPTION

Event type: A social dance.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Event>

=cut

1;
