package SemanticWeb::Schema::CancelAction;

# ABSTRACT: The act of asserting that a future event/action is no longer going to happen

use Moo;

extends qw/ SemanticWeb::Schema::PlanAction /;


use MooX::JSON_LD 'CancelAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.2';

=head1 DESCRIPTION

=begin html

The act of asserting that a future event/action is no longer going to
happen.<br/><br/> Related actions:<br/><br/> <ul> <li><a class="localLink"
href="http://schema.org/ConfirmAction">ConfirmAction</a>: The antonym of
CancelAction.</li> </ul> 

=end html




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::PlanAction>

=cut

1;
