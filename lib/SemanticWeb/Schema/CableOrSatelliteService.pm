use utf8;

package SemanticWeb::Schema::CableOrSatelliteService;

# ABSTRACT: A service which provides access to media programming like TV or radio

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::Service /;


use MooX::JSON_LD 'CableOrSatelliteService';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.0';

=encoding utf8

=head1 DESCRIPTION

A service which provides access to media programming like TV or radio.
Access may be via cable or satellite.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Service>

=cut

1;
