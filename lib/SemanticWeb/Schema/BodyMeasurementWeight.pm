use utf8;

package SemanticWeb::Schema::BodyMeasurementWeight;

# ABSTRACT: Body weight

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'BodyMeasurementWeight';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Body weight. Used, for example, to measure pantyhose.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
