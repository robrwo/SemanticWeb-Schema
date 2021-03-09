use utf8;

package SemanticWeb::Schema::MediaReview;

# ABSTRACT: A [[MediaReview]] is a more specialized form of Review dedicated to the evaluation of media content online

use Moo;

extends qw/ SemanticWeb::Schema::Review /;


use MooX::JSON_LD 'MediaReview';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v12.0.0';

=encoding utf8

=head1 DESCRIPTION

A L<SemanticWeb::Schema::MediaReview> is a more specialized form of Review dedicated to the evaluation of media content online, typically in the context of fact-checking and misinformation.
    For more general reviews of media in the broader sense, use L<SemanticWeb::Schema::UserReview>, L<SemanticWeb::Schema::CriticReview> or other L<SemanticWeb::Schema::Review> types. This definition is
    a work in progress. While the L<SemanticWeb::Schema::MediaManipulationRatingEnumeration> list reflects significant community review amongst fact-checkers and others working
    to combat misinformation, the specific structures for representing media objects, their versions and publication context, is still evolving. Similarly, best practices for the relationship between L<SemanticWeb::Schema::MediaReview> and L<SemanticWeb::Schema::ClaimReview> markup has not yet been finalized.



=head1 ATTRIBUTES


=head2 C<media_authenticity_category>

C<mediaAuthenticityCategory>

Indicates a MediaManipulationRatingEnumeration classification of a media
object (in the context of how it was published or shared).


A media_authenticity_category should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MediaManipulationRatingEnumeration']>

=back

=head2 C<_has_media_authenticity_category>

A predicate for the L</media_authenticity_category> attribute.

=cut

has media_authenticity_category => (
    is        => 'rw',
    predicate => '_has_media_authenticity_category',
    json_ld   => 'mediaAuthenticityCategory',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Review>

=cut

1;
