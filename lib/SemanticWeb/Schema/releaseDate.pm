use utf8;

package SemanticWeb::Schema::releaseDate;

# ABSTRACT: The release date of a product or product model

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'releaseDate';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The release date of a product or product model. This can be used to
distinguish the exact variant of a product.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
