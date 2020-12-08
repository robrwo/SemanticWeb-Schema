use utf8;

package SemanticWeb::Schema::DiscoverAction;

# ABSTRACT: The act of discovering/finding an object.

use Moo;

extends qw/ SemanticWeb::Schema::FindAction /;


use MooX::JSON_LD 'DiscoverAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v11.1.1';

=encoding utf8

=head1 DESCRIPTION

The act of discovering/finding an object.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::FindAction>

=cut

1;
