use utf8;

package SemanticWeb::Schema::associatedPathophysiology;

# ABSTRACT: If applicable

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'associatedPathophysiology';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

If applicable, a description of the pathophysiology associated with the
anatomical system, including potential abnormal changes in the mechanical,
physical, and biochemical functions of the system.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
