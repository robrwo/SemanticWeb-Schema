use utf8;

package SemanticWeb::Schema::regionDrained;

# ABSTRACT: The anatomical or organ system drained by this vessel; generally refers to a specific part of an organ.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'regionDrained';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The anatomical or organ system drained by this vessel; generally refers to
a specific part of an organ.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
