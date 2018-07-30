package SemanticWeb::Schema::MarryAction;

# ABSTRACT: The act of marrying a person.

use Moo;

extends qw/ SemanticWeb::Schema::InteractAction /;


use MooX::JSON_LD 'MarryAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.2';

=head1 DESCRIPTION

The act of marrying a person.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::InteractAction>

=cut

1;