use utf8;

package SemanticWeb::Schema::DrinkAction;

# ABSTRACT: The act of swallowing liquids.

use Moo;

extends qw/ SemanticWeb::Schema::ConsumeAction /;


use MooX::JSON_LD 'DrinkAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v7.0.5';

=encoding utf8

=head1 DESCRIPTION

The act of swallowing liquids.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::ConsumeAction>

=cut

1;
