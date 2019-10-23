use utf8;

package SemanticWeb::Schema::Conversation;

# ABSTRACT: One or more messages between organizations or people on a particular topic

use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork /;


use MooX::JSON_LD 'Conversation';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v4.0.1';

=encoding utf8

=head1 DESCRIPTION

One or more messages between organizations or people on a particular topic.
Individual messages can be linked to the conversation with isPartOf or
hasPart properties.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWork>

=cut

1;
