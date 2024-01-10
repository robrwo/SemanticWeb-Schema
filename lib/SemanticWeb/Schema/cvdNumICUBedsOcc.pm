use utf8;

package SemanticWeb::Schema::cvdNumICUBedsOcc;

# ABSTRACT: numicubedsocc - ICU BED OCCUPANCY: Total number of staffed inpatient ICU beds that are occupied.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'cvdNumICUBedsOcc';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

numicubedsocc - ICU BED OCCUPANCY: Total number of staffed inpatient ICU
beds that are occupied.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
