use utf8;

package SemanticWeb::Schema::countryOfOrigin;

# ABSTRACT: The country of origin of something

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'countryOfOrigin';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The country of origin of something, including products as well as creative  works such as movie and TV content.

In the case of TV and movie, this would be the country of the principle offices of the production company or individual responsible for the movie. For other kinds of L<SemanticWeb::Schema::CreativeWork> it is difficult to provide fully general guidance, and properties such as [[contentLocation]] and [[locationCreated]] may be more applicable.

In the case of products, the country of origin of the product. The exact interpretation of this may vary by context and product type, and cannot be fully enumerated here.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
