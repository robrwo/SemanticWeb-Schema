use utf8;

package SemanticWeb::Schema::mileageFromOdometer;

# ABSTRACT: The total distance travelled by the particular vehicle since its initial production

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'mileageFromOdometer';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The total distance travelled by the particular vehicle since its initial
production, as read from its odometer. Typical unit code(s): KMT for
kilometers, SMI for statute miles.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
