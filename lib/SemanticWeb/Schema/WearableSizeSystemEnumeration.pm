use utf8;

package SemanticWeb::Schema::WearableSizeSystemEnumeration;

# ABSTRACT: Enumerates common size systems specific for wearable products

use Moo;

extends qw/ SemanticWeb::Schema::SizeSystemEnumeration /;


use MooX::JSON_LD 'WearableSizeSystemEnumeration';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v15.0.0';

=encoding utf8

=head1 DESCRIPTION

Enumerates common size systems specific for wearable products




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::SizeSystemEnumeration>

=cut

1;
