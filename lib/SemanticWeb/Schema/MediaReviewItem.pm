use utf8;

package SemanticWeb::Schema::MediaReviewItem;

# ABSTRACT: Represents an item or group of closely related items treated as a unit for the sake of evaluation in a [[MediaReview]]

use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork /;


use MooX::JSON_LD 'MediaReviewItem';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v15.0.0';

=encoding utf8

=head1 DESCRIPTION

Represents an item or group of closely related items treated as a unit for the sake of evaluation in a L<SemanticWeb::Schema::MediaReview>. Authorship etc. apply to the items rather than to the curation/grouping or reviewing party.



=head1 ATTRIBUTES


=head2 C<media_item_appearance>

C<mediaItemAppearance>

In the context of a L<SemanticWeb::Schema::MediaReview>, indicates specific media item(s) that are grouped using a L<SemanticWeb::Schema::MediaReviewItem>.

A media_item_appearance should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MediaObject']>

=back

=head2 C<_has_media_item_appearance>

A predicate for the L</media_item_appearance> attribute.

=cut

has media_item_appearance => (
    is        => 'rw',
    predicate => '_has_media_item_appearance',
    json_ld   => 'mediaItemAppearance',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWork>

=cut

1;
