use utf8;

package SemanticWeb::Schema::productID;

# ABSTRACT: The product identifier, such as ISBN

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'productID';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The product identifier, such as ISBN. For example: ``` meta
itemprop="productID" content="isbn:123-456-789" ```.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
