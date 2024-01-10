use utf8;

package SemanticWeb::Schema::authenticator;

# ABSTRACT: The Organization responsible for authenticating the user's subscription

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'authenticator';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The Organization responsible for authenticating the user's subscription.
For example, many media apps require a cable/satellite provider to
authenticate your subscription before playing media.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
