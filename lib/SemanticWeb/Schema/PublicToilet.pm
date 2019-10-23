use utf8;

package SemanticWeb::Schema::PublicToilet;

# ABSTRACT: A public toilet is a room or small building containing one or more toilets (and possibly also urinals) which is available for use by the general public

use Moo;

extends qw/ SemanticWeb::Schema::CivicStructure /;


use MooX::JSON_LD 'PublicToilet';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v4.0.2';

=encoding utf8

=head1 DESCRIPTION

A public toilet is a room or small building containing one or more toilets
(and possibly also urinals) which is available for use by the general
public, or by customers or employees of certain businesses.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::CivicStructure>

=cut

1;
