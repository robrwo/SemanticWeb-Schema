use utf8;

package SemanticWeb::Schema::WearableSizeSystemGS1;

# ABSTRACT: GS1 (formerly NRF) size system for wearables.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'WearableSizeSystemGS1';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

GS1 (formerly NRF) size system for wearables.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
