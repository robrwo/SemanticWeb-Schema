use utf8;

package SemanticWeb::Schema::isAccessoryOrSparePartFor;

# ABSTRACT: A pointer to another product (or multiple products) for which this product is an accessory or spare part.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'isAccessoryOrSparePartFor';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A pointer to another product (or multiple products) for which this product
is an accessory or spare part.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
