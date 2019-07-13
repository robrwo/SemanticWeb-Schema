use utf8;

package SemanticWeb::Schema::CheckAction;

# ABSTRACT: An agent inspects

use Moo;

extends qw/ SemanticWeb::Schema::FindAction /;


use MooX::JSON_LD 'CheckAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.8.0';

=encoding utf8

=head1 DESCRIPTION

An agent inspects, determines, investigates, inquires, or examines an
object's accuracy, quality, condition, or state.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::FindAction>

=cut

1;
