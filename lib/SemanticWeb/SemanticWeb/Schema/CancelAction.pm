package SemanticWeb::Schema::CancelAction;

# ABSTRACT: <p>The act of asserting that a future event/action is no longer going to happen

use Moo;

extends qw/ SemanticWeb::Schema::PlanAction /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

=begin html

<p>The act of asserting that a future event/action is no longer going to
happen.</p> <p>Related actions:</p> <ul> <li><a class="localLink"
href="http://schema.org/ConfirmAction">ConfirmAction</a>: The antonym of
CancelAction.</li> </ul> 

=end html




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'CancelAction' }



=head1 SEE ALSO



L<SemanticWeb::Schema::PlanAction>

=cut

1;
