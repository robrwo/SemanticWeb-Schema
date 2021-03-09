use utf8;

package SemanticWeb::Schema::LakeBodyOfWater;

# ABSTRACT: A lake (for example, Lake Pontrachain).

use Moo;

extends qw/ SemanticWeb::Schema::BodyOfWater /;


use MooX::JSON_LD 'LakeBodyOfWater';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v12.0.0';

=encoding utf8

=head1 DESCRIPTION

A lake (for example, Lake Pontrachain).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::BodyOfWater>

=cut

1;
