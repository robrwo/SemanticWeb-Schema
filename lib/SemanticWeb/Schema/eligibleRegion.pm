use utf8;

package SemanticWeb::Schema::eligibleRegion;

# ABSTRACT: The ISO 3166-1 (ISO 3166-1 alpha-2) or ISO 3166-2 code

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'eligibleRegion';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The ISO 3166-1 (ISO 3166-1 alpha-2) or ISO 3166-2 code, the place, or the GeoShape for the geo-political region(s) for which the offer or delivery charge specification is valid.

See also [[ineligibleRegion]].



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
