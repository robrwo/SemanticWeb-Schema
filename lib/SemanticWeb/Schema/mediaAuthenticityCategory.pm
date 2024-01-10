use utf8;

package SemanticWeb::Schema::mediaAuthenticityCategory;

# ABSTRACT: Indicates a MediaManipulationRatingEnumeration classification of a media object (in the context of how it was published or shared).

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'mediaAuthenticityCategory';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Indicates a MediaManipulationRatingEnumeration classification of a media
object (in the context of how it was published or shared).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
