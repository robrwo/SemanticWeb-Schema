use utf8;

package SemanticWeb::Schema::DiscoverAction;

# ABSTRACT: The act of discovering/finding an object.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::FindAction /;


use MooX::JSON_LD 'DiscoverAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.2';

=encoding utf8

=head1 DESCRIPTION

The act of discovering/finding an object.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::FindAction>

=cut

1;
