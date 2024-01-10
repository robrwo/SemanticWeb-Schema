use utf8;

package SemanticWeb::Schema::WearableSizeGroupBoys;

# ABSTRACT: Size group "Boys" for wearables.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'WearableSizeGroupBoys';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Size group "Boys" for wearables.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
