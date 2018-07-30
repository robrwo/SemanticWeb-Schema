package SemanticWeb::Schema::DisagreeAction;

# ABSTRACT: The act of expressing a difference of opinion with the object

use Moo;

extends qw/ SemanticWeb::Schema::ReactAction /;


use MooX::JSON_LD 'DisagreeAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.2';

=head1 DESCRIPTION

The act of expressing a difference of opinion with the object. An agent
disagrees to/about an object (a proposition, topic or theme) with
participants.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::ReactAction>

=cut

1;
