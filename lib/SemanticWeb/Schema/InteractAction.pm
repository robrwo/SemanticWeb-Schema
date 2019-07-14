use utf8;

package SemanticWeb::Schema::InteractAction;

# ABSTRACT: The act of interacting with another person or organization.

use Moo;

extends qw/ SemanticWeb::Schema::Action /;


use MooX::JSON_LD 'InteractAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.8.2';

=encoding utf8

=head1 DESCRIPTION

The act of interacting with another person or organization.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Action>

=cut

1;
