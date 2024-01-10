use utf8;

package SemanticWeb::Schema::hasDriveThroughService;

# ABSTRACT: Indicates whether some facility (e

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'hasDriveThroughService';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Indicates whether some facility (e.g. L<SemanticWeb::Schema::FoodEstablishment>, L<SemanticWeb::Schema::CovidTestingFacility>) offers a service that can be used by driving through in a car. In the case of L<SemanticWeb::Schema::CovidTestingFacility> such facilities could potentially help with social distancing from other potentially-infected users.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
