use utf8;

package SemanticWeb::Schema::vehicleConfiguration;

# ABSTRACT: A short text indicating the configuration of the vehicle

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'vehicleConfiguration';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A short text indicating the configuration of the vehicle, e.g. '5dr
hatchback ST 2.5 MT 225 hp' or 'limited edition'.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
