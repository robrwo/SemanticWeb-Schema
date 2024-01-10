use utf8;

package SemanticWeb::Schema::vehicleModelDate;

# ABSTRACT: The release date of a vehicle model (often used to differentiate versions of the same make and model).

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'vehicleModelDate';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The release date of a vehicle model (often used to differentiate versions
of the same make and model).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
