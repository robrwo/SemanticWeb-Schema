use utf8;

package SemanticWeb::Schema::BodyMeasurementChest;

# ABSTRACT: Maximum girth of chest

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'BodyMeasurementChest';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Maximum girth of chest. Used, for example, to fit men's suits.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
