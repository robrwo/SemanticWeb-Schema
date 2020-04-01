use utf8;

package SemanticWeb::Schema::MediaReview;

# ABSTRACT: (editorial work in progress

use Moo;

extends qw/ SemanticWeb::Schema::Review /;


use MooX::JSON_LD 'MediaReview';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v7.0.3';

=encoding utf8

=head1 DESCRIPTION

=begin html

<p>(editorial work in progress, this definition is incomplete and
unreviewed) A <a class="localLink"
href="http://schema.org/MediaReview">MediaReview</a> is a more specialized
form of Review dedicated to the evaluation of media content online,
typically in the context of fact-checking and misinformation. For more
general reviews of media in the broader sense, use <a class="localLink"
href="http://schema.org/UserReview">UserReview</a>, <a class="localLink"
href="http://schema.org/CriticReview">CriticReview</a> or other <a
class="localLink" href="http://schema.org/Review">Review</a> types.<p>

=end html




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
