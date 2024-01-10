use utf8;

package SemanticWeb::Schema::distinguishingSign;

# ABSTRACT: One of a set of signs and symptoms that can be used to distinguish this diagnosis from others in the differential diagnosis.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'distinguishingSign';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

One of a set of signs and symptoms that can be used to distinguish this
diagnosis from others in the differential diagnosis.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
