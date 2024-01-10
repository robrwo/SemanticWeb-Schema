use utf8;

package SemanticWeb::Schema::mediaItemAppearance;

# ABSTRACT: In the context of a [[MediaReview]]

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'mediaItemAppearance';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

In the context of a L<SemanticWeb::Schema::MediaReview>, indicates specific media item(s) that are grouped using a L<SemanticWeb::Schema::MediaReviewItem>.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
