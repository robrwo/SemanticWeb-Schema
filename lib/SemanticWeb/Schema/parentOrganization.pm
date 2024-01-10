use utf8;

package SemanticWeb::Schema::parentOrganization;

# ABSTRACT: The larger organization that this organization is a [[subOrganization]] of

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'parentOrganization';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The larger organization that this organization is a [[subOrganization]] of, if any.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
