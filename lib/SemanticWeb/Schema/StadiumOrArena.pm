use utf8;

package SemanticWeb::Schema::StadiumOrArena;

# ABSTRACT: A stadium.

use Moo;

extends qw/ SemanticWeb::Schema::CivicStructure SemanticWeb::Schema::SportsActivityLocation /;


use MooX::JSON_LD 'StadiumOrArena';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v5.0.1';

=encoding utf8

=head1 DESCRIPTION

A stadium.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::SportsActivityLocation>

=cut

1;
