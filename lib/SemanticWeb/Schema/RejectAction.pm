use utf8;

package SemanticWeb::Schema::RejectAction;

# ABSTRACT: The act of rejecting to/adopting an object

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::AllocateAction /;


use MooX::JSON_LD 'RejectAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v22.0.0';

=encoding utf8

=head1 DESCRIPTION

The act of rejecting to/adopting an object.

Related actions:

=over

=item *

L<SemanticWeb::Schema::AcceptAction>: The antonym of RejectAction.


=back



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::AllocateAction>

=cut

1;
