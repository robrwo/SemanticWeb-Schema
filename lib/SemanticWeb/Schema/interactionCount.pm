use utf8;

package SemanticWeb::Schema::interactionCount;

# ABSTRACT: This property is deprecated

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'interactionCount';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

This property is deprecated, alongside the UserInteraction types on which
it depended.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
