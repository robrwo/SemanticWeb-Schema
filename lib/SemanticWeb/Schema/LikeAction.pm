use utf8;

package SemanticWeb::Schema::LikeAction;

# ABSTRACT: The act of expressing a positive sentiment about the object

use Moo;

extends qw/ SemanticWeb::Schema::ReactAction /;


use MooX::JSON_LD 'LikeAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v6.0.1';

=encoding utf8

=head1 DESCRIPTION

The act of expressing a positive sentiment about the object. An agent likes
an object (a proposition, topic or theme) with participants.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::ReactAction>

=cut

1;
