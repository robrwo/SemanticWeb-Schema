use utf8;

package SemanticWeb::Schema::MediaReview;

# ABSTRACT: A [[MediaReview]] is a more specialized form of Review dedicated to the evaluation of media content online

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::Review /;


use MooX::JSON_LD 'MediaReview';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.2';

=encoding utf8

=head1 DESCRIPTION

A L<SemanticWeb::Schema::MediaReview> is a more specialized form of Review dedicated to the evaluation of media content online, typically in the context of fact-checking and misinformation.
    For more general reviews of media in the broader sense, use L<SemanticWeb::Schema::UserReview>, L<SemanticWeb::Schema::CriticReview> or other L<SemanticWeb::Schema::Review> types. This definition is
    a work in progress. While the L<SemanticWeb::Schema::MediaManipulationRatingEnumeration> list reflects significant community review amongst fact-checkers and others working
    to combat misinformation, the specific structures for representing media objects, their versions and publication context, are still evolving. Similarly, best practices for the relationship between L<SemanticWeb::Schema::MediaReview> and L<SemanticWeb::Schema::ClaimReview> markup have not yet been finalized.



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


=head2 C<original_media_context_description>

C<originalMediaContextDescription>

Describes, in a L<SemanticWeb::Schema::MediaReview> when dealing with L<SemanticWeb::Schema::DecontextualizedContent>, background information that can contribute to better interpretation of the L<SemanticWeb::Schema::MediaObject>.

A original_media_context_description should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_original_media_context_description>

A predicate for the L</original_media_context_description> attribute.

=cut

has original_media_context_description => (
    is        => 'rw',
    predicate => '_has_original_media_context_description',
    json_ld   => 'originalMediaContextDescription',
);


=head2 C<original_media_link>

C<originalMediaLink>

Link to the page containing an original version of the content, or directly to an online copy of the original L<SemanticWeb::Schema::MediaObject> content, e.g. video file.

A original_media_link should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MediaObject']>

=item C<InstanceOf['SemanticWeb::Schema::WebPage']>

=item C<Str>

=back

=head2 C<_has_original_media_link>

A predicate for the L</original_media_link> attribute.

=cut

has original_media_link => (
    is        => 'rw',
    predicate => '_has_original_media_link',
    json_ld   => 'originalMediaLink',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Review>

=cut

1;
