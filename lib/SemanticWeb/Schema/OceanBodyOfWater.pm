use utf8;

package SemanticWeb::Schema::OceanBodyOfWater;

# ABSTRACT: An ocean (for example, the Pacific).

use Moo;

extends qw/ SemanticWeb::Schema::BodyOfWater /;


use MooX::JSON_LD 'OceanBodyOfWater';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v10.0.0';

=encoding utf8

=head1 DESCRIPTION

An ocean (for example, the Pacific).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::BodyOfWater>

=cut

1;
