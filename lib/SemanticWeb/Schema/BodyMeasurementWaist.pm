use utf8;

package SemanticWeb::Schema::BodyMeasurementWaist;

# ABSTRACT: Girth of natural waistline (between hip bones and lower ribs)

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'BodyMeasurementWaist';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Girth of natural waistline (between hip bones and lower ribs). Used, for
example, to fit pants.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
