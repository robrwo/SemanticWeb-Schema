package SemanticWeb::Schema::WearAction;

# ABSTRACT: The act of dressing oneself in clothing.

use Moo;

extends qw/ SemanticWeb::Schema::UseAction /;


use MooX::JSON_LD 'WearAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.2';

=head1 DESCRIPTION

The act of dressing oneself in clothing.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::UseAction>

=cut

1;