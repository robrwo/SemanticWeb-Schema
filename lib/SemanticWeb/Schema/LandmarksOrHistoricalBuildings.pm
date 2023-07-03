use utf8;

package SemanticWeb::Schema::LandmarksOrHistoricalBuildings;

# ABSTRACT: An historical landmark or building.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::Place /;


use MooX::JSON_LD 'LandmarksOrHistoricalBuildings';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v22.0.1';

=encoding utf8

=head1 DESCRIPTION

An historical landmark or building.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Place>

=cut

1;
