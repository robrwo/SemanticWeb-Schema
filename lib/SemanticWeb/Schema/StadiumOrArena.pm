use utf8;

package SemanticWeb::Schema::StadiumOrArena;

# ABSTRACT: A stadium.

use Moo;

extends qw/ SemanticWeb::Schema::SportsActivityLocation SemanticWeb::Schema::CivicStructure /;


use MooX::JSON_LD 'StadiumOrArena';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.5.0';

=encoding utf8

=head1 DESCRIPTION

A stadium.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::CivicStructure>

=cut

1;
