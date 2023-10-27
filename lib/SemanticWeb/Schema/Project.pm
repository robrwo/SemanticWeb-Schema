use utf8;

package SemanticWeb::Schema::Project;

# ABSTRACT: An enterprise (potentially individual but typically collaborative)

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::Organization /;


use MooX::JSON_LD 'Project';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v23.0.0';

=encoding utf8

=head1 DESCRIPTION

An enterprise (potentially individual but typically collaborative), planned to achieve a particular aim.
Use properties from L<SemanticWeb::Schema::Organization>, [[subOrganization]]/[[parentOrganization]] to indicate project sub-structures. 



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Organization>

=cut

1;
