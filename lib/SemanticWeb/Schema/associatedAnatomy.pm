use utf8;

package SemanticWeb::Schema::associatedAnatomy;

# ABSTRACT: The anatomy of the underlying organ system or structures associated with this entity.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'associatedAnatomy';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The anatomy of the underlying organ system or structures associated with
this entity.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
