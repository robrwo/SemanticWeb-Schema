use utf8;

package SemanticWeb::Schema::AgreeAction;

# ABSTRACT: The act of expressing a consistency of opinion with the object

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::ReactAction /;


use MooX::JSON_LD 'AgreeAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.1';

=encoding utf8

=head1 DESCRIPTION

The act of expressing a consistency of opinion with the object. An agent
agrees to/about an object (a proposition, topic or theme) with
participants.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::ReactAction>

=cut

1;
