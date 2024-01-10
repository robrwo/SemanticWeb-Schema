use utf8;

package SemanticWeb::Schema::targetProduct;

# ABSTRACT: Target Operating System / Product to which the code applies

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'targetProduct';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Target Operating System / Product to which the code applies. If applies to
several versions, just the product name can be used.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
