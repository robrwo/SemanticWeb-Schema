use utf8;

package SemanticWeb::Schema::BodyMeasurementBust;

# ABSTRACT: Maximum girth of bust

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'BodyMeasurementBust';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Maximum girth of bust. Used, for example, to fit women's suits.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
