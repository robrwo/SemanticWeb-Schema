use utf8;

package SemanticWeb::Schema::cvdNumBedsOcc;

# ABSTRACT: numbedsocc - HOSPITAL INPATIENT BED OCCUPANCY: Total number of staffed inpatient beds that are occupied.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'cvdNumBedsOcc';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

numbedsocc - HOSPITAL INPATIENT BED OCCUPANCY: Total number of staffed
inpatient beds that are occupied.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
