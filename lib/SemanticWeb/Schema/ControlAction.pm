use utf8;

package SemanticWeb::Schema::ControlAction;

# ABSTRACT: An agent controls a device or application.

use Moo;

extends qw/ SemanticWeb::Schema::Action /;


use MooX::JSON_LD 'ControlAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.1.0';

=encoding utf8

=head1 DESCRIPTION

An agent controls a device or application.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Action>

=cut

1;
