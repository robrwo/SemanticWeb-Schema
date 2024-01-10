use utf8;

package SemanticWeb::Schema::mpn;

# ABSTRACT: The Manufacturer Part Number (MPN) of the product

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'mpn';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The Manufacturer Part Number (MPN) of the product, or the product to which
the offer refers.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
