use utf8;

package SemanticWeb::Schema::EatAction;

# ABSTRACT: The act of swallowing solid objects.

use Moo;

extends qw/ SemanticWeb::Schema::ConsumeAction /;


use MooX::JSON_LD 'EatAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v15.0.0';

=encoding utf8

=head1 DESCRIPTION

The act of swallowing solid objects.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::ConsumeAction>

=cut

1;
