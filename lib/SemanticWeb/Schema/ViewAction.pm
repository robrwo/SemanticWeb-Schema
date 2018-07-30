package SemanticWeb::Schema::ViewAction;

# ABSTRACT: The act of consuming static visual content.

use Moo;

extends qw/ SemanticWeb::Schema::ConsumeAction /;


use MooX::JSON_LD 'ViewAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.2';

=head1 DESCRIPTION

The act of consuming static visual content.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::ConsumeAction>

=cut

1;