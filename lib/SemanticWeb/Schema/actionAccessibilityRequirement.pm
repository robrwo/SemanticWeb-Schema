use utf8;

package SemanticWeb::Schema::actionAccessibilityRequirement;

# ABSTRACT: A set of requirements that must be fulfilled in order to perform an Action

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'actionAccessibilityRequirement';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A set of requirements that must be fulfilled in order to perform an Action.
If more than one value is specified, fulfilling one set of requirements
will allow the Action to be performed.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
