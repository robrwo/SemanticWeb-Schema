use utf8;

package SemanticWeb::Schema::FindAction;

# ABSTRACT: The act of finding an object

use Moo;

extends qw/ SemanticWeb::Schema::Action /;


use MooX::JSON_LD 'FindAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v12.0.1';

=encoding utf8

=head1 DESCRIPTION

The act of finding an object.

Related actions:

=over

=item *

L<SemanticWeb::Schema::SearchAction>: FindAction is generally lead by a SearchAction, but not necessarily.


=back



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Action>

=cut

1;
