use utf8;

package SemanticWeb::Schema::HousePainter;

# ABSTRACT: A house painting service.

use Moo;

extends qw/ SemanticWeb::Schema::HomeAndConstructionBusiness /;


use MooX::JSON_LD 'HousePainter';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v4.0.2';

=encoding utf8

=head1 DESCRIPTION

A house painting service.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::HomeAndConstructionBusiness>

=cut

1;
