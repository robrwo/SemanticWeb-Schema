use utf8;

package SemanticWeb::Schema::agentInteractionStatistic;

# ABSTRACT: The number of completed interactions for this entity

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'agentInteractionStatistic';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The number of completed interactions for this entity, in a particular role
(the 'agent'), in a particular action (indicated in the statistic), and in
a particular context (i.e. interactionService).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
