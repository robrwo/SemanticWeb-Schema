use utf8;

package SemanticWeb::Schema::ChildrensEvent;

# ABSTRACT: Event type: Children's event.

use Moo;

extends qw/ SemanticWeb::Schema::Event /;


use MooX::JSON_LD 'ChildrensEvent';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v10.0.1';

=encoding utf8

=head1 DESCRIPTION

Event type: Children's event.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Event>

=cut

1;
