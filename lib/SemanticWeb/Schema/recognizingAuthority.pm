use utf8;

package SemanticWeb::Schema::recognizingAuthority;

# ABSTRACT: If applicable

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'recognizingAuthority';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

If applicable, the organization that officially recognizes this entity as
part of its endorsed system of medicine.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
