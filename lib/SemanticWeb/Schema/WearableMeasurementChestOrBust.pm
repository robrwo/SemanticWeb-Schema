use utf8;

package SemanticWeb::Schema::WearableMeasurementChestOrBust;

# ABSTRACT: Measurement of the chest/bust section

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'WearableMeasurementChestOrBust';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Measurement of the chest/bust section, for example of a suit.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
