use utf8;

package SemanticWeb::Schema::isPlanForApartment;

# ABSTRACT: Indicates some accommodation that this floor plan describes.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'isPlanForApartment';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Indicates some accommodation that this floor plan describes.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
