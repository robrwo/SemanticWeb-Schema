use utf8;

package SemanticWeb::Schema::Review;

# ABSTRACT: A review of an item - for example

use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork /;


use MooX::JSON_LD 'Review';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v15.0.1';

=encoding utf8

=head1 DESCRIPTION

A review of an item - for example, of a restaurant, movie, or store.




=head1 ATTRIBUTES


=head2 C<associated_claim_review>

C<associatedClaimReview>

An associated L<SemanticWeb::Schema::ClaimReview>, related by specific common content, topic or claim. The expectation is that this property would be most typically used in cases where a single activity is conducting both claim reviews and media reviews, in which case [[relatedMediaReview]] would commonly be used on a L<SemanticWeb::Schema::ClaimReview>, while [[relatedClaimReview]] would be used on L<SemanticWeb::Schema::MediaReview>.

A associated_claim_review should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Review']>

=back

=head2 C<_has_associated_claim_review>

A predicate for the L</associated_claim_review> attribute.

=cut

has associated_claim_review => (
    is        => 'rw',
    predicate => '_has_associated_claim_review',
    json_ld   => 'associatedClaimReview',
);


=head2 C<associated_media_review>

C<associatedMediaReview>

An associated L<SemanticWeb::Schema::MediaReview>, related by specific common content, topic or claim. The expectation is that this property would be most typically used in cases where a single activity is conducting both claim reviews and media reviews, in which case [[relatedMediaReview]] would commonly be used on a L<SemanticWeb::Schema::ClaimReview>, while [[relatedClaimReview]] would be used on L<SemanticWeb::Schema::MediaReview>.

A associated_media_review should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Review']>

=back

=head2 C<_has_associated_media_review>

A predicate for the L</associated_media_review> attribute.

=cut

has associated_media_review => (
    is        => 'rw',
    predicate => '_has_associated_media_review',
    json_ld   => 'associatedMediaReview',
);


=head2 C<associated_review>

C<associatedReview>

An associated L<SemanticWeb::Schema::Review>.

A associated_review should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Review']>

=back

=head2 C<_has_associated_review>

A predicate for the L</associated_review> attribute.

=cut

has associated_review => (
    is        => 'rw',
    predicate => '_has_associated_review',
    json_ld   => 'associatedReview',
);


=head2 C<item_reviewed>

C<itemReviewed>

The item that is being reviewed/rated.


A item_reviewed should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Thing']>

=back

=head2 C<_has_item_reviewed>

A predicate for the L</item_reviewed> attribute.

=cut

has item_reviewed => (
    is        => 'rw',
    predicate => '_has_item_reviewed',
    json_ld   => 'itemReviewed',
);


=head2 C<negative_notes>

C<negativeNotes>

Provides negative considerations regarding something, most typically in pro/con lists for reviews (alongside [[positiveNotes]]). For symmetry 

In the case of a L<SemanticWeb::Schema::Review>, the property describes the [[itemReviewed]] from the perspective of the review; in the case of a L<SemanticWeb::Schema::Product>, the product itself is being described. Since product descriptions 
tend to emphasise positive claims, it may be relatively unusual to find [[negativeNotes]] used in this way. Nevertheless for the sake of symmetry, [[negativeNotes]] can be used on L<SemanticWeb::Schema::Product>.

The property values can be expressed either as unstructured text (repeated as necessary), or if ordered, as a list (in which case the most negative is at the beginning of the list).

A negative_notes should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::ItemList']>

=item C<InstanceOf['SemanticWeb::Schema::ListItem']>

=item C<InstanceOf['SemanticWeb::Schema::WebContent']>

=item C<Str>

=back

=head2 C<_has_negative_notes>

A predicate for the L</negative_notes> attribute.

=cut

has negative_notes => (
    is        => 'rw',
    predicate => '_has_negative_notes',
    json_ld   => 'negativeNotes',
);


=head2 C<positive_notes>

C<positiveNotes>

Provides positive considerations regarding something, for example product highlights or (alongside [[negativeNotes]]) pro/con lists for reviews.

In the case of a L<SemanticWeb::Schema::Review>, the property describes the [[itemReviewed]] from the perspective of the review; in the case of a L<SemanticWeb::Schema::Product>, the product itself is being described.

The property values can be expressed either as unstructured text (repeated as necessary), or if ordered, as a list (in which case the most positive is at the beginning of the list).

A positive_notes should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::ItemList']>

=item C<InstanceOf['SemanticWeb::Schema::ListItem']>

=item C<InstanceOf['SemanticWeb::Schema::WebContent']>

=item C<Str>

=back

=head2 C<_has_positive_notes>

A predicate for the L</positive_notes> attribute.

=cut

has positive_notes => (
    is        => 'rw',
    predicate => '_has_positive_notes',
    json_ld   => 'positiveNotes',
);


=head2 C<review_aspect>

C<reviewAspect>

This Review or Rating is relevant to this part or facet of the
itemReviewed.


A review_aspect should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_review_aspect>

A predicate for the L</review_aspect> attribute.

=cut

has review_aspect => (
    is        => 'rw',
    predicate => '_has_review_aspect',
    json_ld   => 'reviewAspect',
);


=head2 C<review_body>

C<reviewBody>

The actual body of the review.


A review_body should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_review_body>

A predicate for the L</review_body> attribute.

=cut

has review_body => (
    is        => 'rw',
    predicate => '_has_review_body',
    json_ld   => 'reviewBody',
);


=head2 C<review_rating>

C<reviewRating>

The rating given in this review. Note that reviews can themselves be rated. The C<reviewRating> applies to rating given by the review. The [[aggregateRating]] property applies to the review itself, as a creative work.

A review_rating should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Rating']>

=back

=head2 C<_has_review_rating>

A predicate for the L</review_rating> attribute.

=cut

has review_rating => (
    is        => 'rw',
    predicate => '_has_review_rating',
    json_ld   => 'reviewRating',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWork>

=cut

1;
