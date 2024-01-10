use utf8;

package SemanticWeb::Schema::participant;

# ABSTRACT: Other co-agents that participated in the action indirectly

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'participant';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Other co-agents that participated in the action indirectly. E.g. John wrote
a book with *Steve*.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
