use utf8;

package SemanticWeb::Schema::DislikeAction;

# ABSTRACT: The act of expressing a negative sentiment about the object

use Moo;

extends qw/ SemanticWeb::Schema::ReactAction /;


use MooX::JSON_LD 'DislikeAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v13.0.0';

=encoding utf8

=head1 DESCRIPTION

The act of expressing a negative sentiment about the object. An agent
dislikes an object (a proposition, topic or theme) with participants.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::ReactAction>

=cut

1;
