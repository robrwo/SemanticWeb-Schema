use utf8;

package SemanticWeb::Schema::inChI;

# ABSTRACT: Non-proprietary identifier for molecular entity that can be used in printed and electronic data sources thus enabling easier linking of diverse data compilations.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'inChI';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Non-proprietary identifier for molecular entity that can be used in printed
and electronic data sources thus enabling easier linking of diverse data
compilations.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
