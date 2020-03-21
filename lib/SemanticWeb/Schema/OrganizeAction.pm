use utf8;

package SemanticWeb::Schema::OrganizeAction;

# ABSTRACT: The act of manipulating/administering/supervising/controlling one or more objects.

use Moo;

extends qw/ SemanticWeb::Schema::Action /;


use MooX::JSON_LD 'OrganizeAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v7.0.0';

=encoding utf8

=head1 DESCRIPTION

The act of manipulating/administering/supervising/controlling one or more
objects.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Action>

=cut

1;
