use utf8;

package SemanticWeb::Schema::sizeGroup;

# ABSTRACT: The size group (also known as "size type") for a product's size

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'sizeGroup';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The size group (also known as "size type") for a product's size. Size
groups are common in the fashion industry to define size segments and
suggested audiences for wearable products. Multiple values can be combined,
for example "men's big and tall", "petite maternity" or "regular".




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
