use utf8;

package SemanticWeb::Schema::AssessAction;

# ABSTRACT: The act of forming one's opinion

use Moo;

extends qw/ SemanticWeb::Schema::Action /;


use MooX::JSON_LD 'AssessAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v7.0.2';

=encoding utf8

=head1 DESCRIPTION

The act of forming one's opinion, reaction or sentiment.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Action>

=cut

1;
