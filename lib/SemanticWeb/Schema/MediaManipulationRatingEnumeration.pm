use utf8;

package SemanticWeb::Schema::MediaManipulationRatingEnumeration;

# ABSTRACT: (editorial work in progress

use Moo;

extends qw/ SemanticWeb::Schema::Enumeration /;


use MooX::JSON_LD 'MediaManipulationRatingEnumeration';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v9.0.0';

=encoding utf8

=head1 DESCRIPTION

(editorial work in progress, this definition is incomplete and unreviewed)
MediaManipulationRatingEnumeration classifies a number of ways in which a
media item (video, image, audio) can be manipulated, taking into account
the context within which they are published or presented.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Enumeration>

=cut

1;
