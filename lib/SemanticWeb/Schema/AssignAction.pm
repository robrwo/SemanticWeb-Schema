use utf8;

package SemanticWeb::Schema::AssignAction;

# ABSTRACT: The act of allocating an action/event/task to some destination (someone or something).

use Moo;

extends qw/ SemanticWeb::Schema::AllocateAction /;


use MooX::JSON_LD 'AssignAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.6.0';

=encoding utf8

=head1 DESCRIPTION

The act of allocating an action/event/task to some destination (someone or
something).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::AllocateAction>

=cut

1;
