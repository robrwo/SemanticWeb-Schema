use utf8;

package SemanticWeb::Schema::specialOpeningHoursSpecification;

# ABSTRACT: The special opening hours of a certain place

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'specialOpeningHoursSpecification';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The special opening hours of a certain place.

Use this to explicitly override general opening hours brought in scope by [[openingHoursSpecification]] or [[openingHours]].



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
