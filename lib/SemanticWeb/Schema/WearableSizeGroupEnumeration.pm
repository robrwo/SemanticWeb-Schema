use utf8;

package SemanticWeb::Schema::WearableSizeGroupEnumeration;

# ABSTRACT: Enumerates common size groups (also known as "size types") for wearable products.

use Moo;

extends qw/ SemanticWeb::Schema::SizeGroupEnumeration /;


use MooX::JSON_LD 'WearableSizeGroupEnumeration';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v13.0.0';

=encoding utf8

=head1 DESCRIPTION

Enumerates common size groups (also known as "size types") for wearable
products.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::SizeGroupEnumeration>

=cut

1;
