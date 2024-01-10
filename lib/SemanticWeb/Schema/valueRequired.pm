use utf8;

package SemanticWeb::Schema::valueRequired;

# ABSTRACT: Whether the property must be filled in to complete the action

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'valueRequired';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Whether the property must be filled in to complete the action. Default is
false.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
