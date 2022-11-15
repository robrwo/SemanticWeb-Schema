use utf8;

package SemanticWeb::Schema::DeleteAction;

# ABSTRACT: The act of editing a recipient by removing one of its objects.

use Moo;

extends qw/ SemanticWeb::Schema::UpdateAction /;


use MooX::JSON_LD 'DeleteAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v15.0.1';

=encoding utf8

=head1 DESCRIPTION

The act of editing a recipient by removing one of its objects.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::UpdateAction>

=cut

1;
