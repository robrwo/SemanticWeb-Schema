use utf8;

package SemanticWeb::Schema::AcceptAction;

# ABSTRACT: The act of committing to/adopting an object

use Moo;

extends qw/ SemanticWeb::Schema::AllocateAction /;


use MooX::JSON_LD 'AcceptAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v13.0.0';

=encoding utf8

=head1 DESCRIPTION

The act of committing to/adopting an object.

Related actions:

=over

=item *

L<SemanticWeb::Schema::RejectAction>: The antonym of AcceptAction.


=back



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::AllocateAction>

=cut

1;
