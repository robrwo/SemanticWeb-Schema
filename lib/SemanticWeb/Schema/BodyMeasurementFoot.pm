use utf8;

package SemanticWeb::Schema::BodyMeasurementFoot;

# ABSTRACT: Foot length (measured between end of the most prominent toe and the most prominent part of the heel)

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'BodyMeasurementFoot';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Foot length (measured between end of the most prominent toe and the most
prominent part of the heel). Used, for example, to measure socks.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
