use utf8;

package SemanticWeb::Schema::CreateAction;

# ABSTRACT: The act of deliberately creating/producing/generating/building a result out of the agent.

use Moo;

extends qw/ SemanticWeb::Schema::Action /;


use MooX::JSON_LD 'CreateAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.5';

=encoding utf8

=head1 DESCRIPTION

The act of deliberately creating/producing/generating/building a result out
of the agent.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Action>

=cut

1;
