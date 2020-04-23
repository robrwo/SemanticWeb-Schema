use utf8;

package SemanticWeb::Schema::UseAction;

# ABSTRACT: The act of applying an object to its intended purpose.

use Moo;

extends qw/ SemanticWeb::Schema::ConsumeAction /;


use MooX::JSON_LD 'UseAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v7.0.5';

=encoding utf8

=head1 DESCRIPTION

The act of applying an object to its intended purpose.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::ConsumeAction>

=cut

1;
