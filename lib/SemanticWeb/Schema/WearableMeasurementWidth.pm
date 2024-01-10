use utf8;

package SemanticWeb::Schema::WearableMeasurementWidth;

# ABSTRACT: Measurement of the width

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'WearableMeasurementWidth';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Measurement of the width, for example of shoes.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
