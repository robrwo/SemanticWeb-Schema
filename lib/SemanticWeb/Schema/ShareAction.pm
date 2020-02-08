use utf8;

package SemanticWeb::Schema::ShareAction;

# ABSTRACT: The act of distributing content to people for their amusement or edification.

use Moo;

extends qw/ SemanticWeb::Schema::CommunicateAction /;


use MooX::JSON_LD 'ShareAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v6.0.2';

=encoding utf8

=head1 DESCRIPTION

The act of distributing content to people for their amusement or
edification.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::CommunicateAction>

=cut

1;
