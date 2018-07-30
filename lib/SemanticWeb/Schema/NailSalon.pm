package SemanticWeb::Schema::NailSalon;

# ABSTRACT: A nail salon.

use Moo;

extends qw/ SemanticWeb::Schema::HealthAndBeautyBusiness /;


use MooX::JSON_LD 'NailSalon';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.2';

=head1 DESCRIPTION

A nail salon.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::HealthAndBeautyBusiness>

=cut

1;