use utf8;

package SemanticWeb::Schema::vehicleSpecialUsage;

# ABSTRACT: Indicates whether the vehicle has been used for special purposes

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'vehicleSpecialUsage';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Indicates whether the vehicle has been used for special purposes, like
commercial rental, driving school, or as a taxi. The legislation in many
countries requires this information to be revealed when offering a car for
sale.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
