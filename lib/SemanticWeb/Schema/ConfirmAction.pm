use utf8;

package SemanticWeb::Schema::ConfirmAction;

# ABSTRACT: The act of notifying someone that a future event/action is going to happen as expected

use Moo;

extends qw/ SemanticWeb::Schema::InformAction /;


use MooX::JSON_LD 'ConfirmAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v8.0.0';

=encoding utf8

=head1 DESCRIPTION

=begin html

<p>The act of notifying someone that a future event/action is going to
happen as expected.<br/><br/> Related actions:<br/><br/> <ul> <li><a
class="localLink" href="http://schema.org/CancelAction">CancelAction</a>:
The antonym of ConfirmAction.</li> </ul> <p>

=end html




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::InformAction>

=cut

1;
