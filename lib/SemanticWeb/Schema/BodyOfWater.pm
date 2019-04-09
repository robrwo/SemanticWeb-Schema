use utf8;

package SemanticWeb::Schema::BodyOfWater;

# ABSTRACT: A body of water

use Moo;

extends qw/ SemanticWeb::Schema::Landform /;


use MooX::JSON_LD 'BodyOfWater';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.5.1';

=encoding utf8

=head1 DESCRIPTION

A body of water, such as a sea, ocean, or lake.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Landform>

=cut

1;
