use utf8;

package SemanticWeb::Schema::DaySpa;

# ABSTRACT: A day spa.

use Moo;

extends qw/ SemanticWeb::Schema::HealthAndBeautyBusiness /;


use MooX::JSON_LD 'DaySpa';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v10.0.0';

=encoding utf8

=head1 DESCRIPTION

A day spa.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::HealthAndBeautyBusiness>

=cut

1;
