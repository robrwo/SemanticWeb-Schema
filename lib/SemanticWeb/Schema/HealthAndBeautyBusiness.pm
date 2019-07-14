use utf8;

package SemanticWeb::Schema::HealthAndBeautyBusiness;

# ABSTRACT: Health and beauty.

use Moo;

extends qw/ SemanticWeb::Schema::LocalBusiness /;


use MooX::JSON_LD 'HealthAndBeautyBusiness';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.8.2';

=encoding utf8

=head1 DESCRIPTION

Health and beauty.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::LocalBusiness>

=cut

1;
