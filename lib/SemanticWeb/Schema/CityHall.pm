use utf8;

package SemanticWeb::Schema::CityHall;

# ABSTRACT: A city hall.

use Moo;

extends qw/ SemanticWeb::Schema::GovernmentBuilding /;


use MooX::JSON_LD 'CityHall';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.5.2';

=encoding utf8

=head1 DESCRIPTION

A city hall.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::GovernmentBuilding>

=cut

1;
