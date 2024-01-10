use utf8;

package SemanticWeb::Schema::fundedItem;

# ABSTRACT: Indicates something directly or indirectly funded or sponsored through a [[Grant]]

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'fundedItem';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Indicates something directly or indirectly funded or sponsored through a L<SemanticWeb::Schema::Grant>. See also [[ownershipFundingInfo]].



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
