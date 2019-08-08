use utf8;

package SemanticWeb::Schema::TelevisionChannel;

# ABSTRACT: A unique instance of a television BroadcastService on a CableOrSatelliteService lineup.

use Moo;

extends qw/ SemanticWeb::Schema::BroadcastChannel /;


use MooX::JSON_LD 'TelevisionChannel';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.9.0';

=encoding utf8

=head1 DESCRIPTION

A unique instance of a television BroadcastService on a
CableOrSatelliteService lineup.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::BroadcastChannel>

=cut

1;
