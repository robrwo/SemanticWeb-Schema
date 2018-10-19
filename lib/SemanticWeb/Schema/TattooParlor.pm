use utf8;

package SemanticWeb::Schema::TattooParlor;

# ABSTRACT: A tattoo parlor.

use Moo;

extends qw/ SemanticWeb::Schema::HealthAndBeautyBusiness /;


use MooX::JSON_LD 'TattooParlor';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.2';

=encoding utf8

=head1 DESCRIPTION

A tattoo parlor.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::HealthAndBeautyBusiness>

=cut

1;
