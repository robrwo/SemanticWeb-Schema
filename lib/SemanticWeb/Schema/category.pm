use utf8;

package SemanticWeb::Schema::category;

# ABSTRACT: A category for the item

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'category';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A category for the item. Greater signs or slashes can be used to informally
indicate a category hierarchy.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
