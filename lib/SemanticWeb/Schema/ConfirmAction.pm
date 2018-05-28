package SemanticWeb::Schema::ConfirmAction;

# ABSTRACT: <p>The act of notifying someone that a future event/action is going to happen as expected

use Moo;

extends qw/ SemanticWeb::Schema::InformAction /;


use MooX::JSON_LD 'ConfirmAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

=begin html

<p>The act of notifying someone that a future event/action is going to
happen as expected.</p> <p>Related actions:</p> <ul> <li><a
class="localLink" href="http://schema.org/CancelAction">CancelAction</a>:
The antonym of ConfirmAction.</li> </ul> 

=end html




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::InformAction>

=cut

1;
