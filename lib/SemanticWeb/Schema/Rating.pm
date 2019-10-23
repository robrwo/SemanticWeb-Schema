use utf8;

package SemanticWeb::Schema::Rating;

# ABSTRACT: A rating is an evaluation on a numeric scale

use Moo;

extends qw/ SemanticWeb::Schema::Intangible /;


use MooX::JSON_LD 'Rating';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v4.0.0';

=encoding utf8

=head1 DESCRIPTION

A rating is an evaluation on a numeric scale, such as 1 to 5 stars.




=head1 ATTRIBUTES


=head2 C<author>



The author of this content or rating. Please note that author is special in
that HTML 5 provides a special mechanism for indicating authorship via the
rel tag. That is equivalent to this and may be used interchangeably.


A author should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=cut

has author => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'author',
);


=head2 C<best_rating>

C<bestRating>

The highest value allowed in this rating system. If bestRating is omitted,
5 is assumed.


A best_rating should be one of the following types:

=over

=item C<Num>

=item C<Str>

=back

=cut

has best_rating => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'bestRating',
);


=head2 C<rating_explanation>

C<ratingExplanation>

=begin html

A short explanation (e.g. one to two sentences) providing background
context and other information that led to the conclusion expressed in the
rating. This is particularly applicable to ratings associated with "fact
check" markup using <a class="localLink"
href="http://schema.org/ClaimReview">ClaimReview</a>.

=end html


A rating_explanation should be one of the following types:

=over

=item C<Str>

=back

=cut

has rating_explanation => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'ratingExplanation',
);


=head2 C<rating_value>

C<ratingValue>

=begin html

The rating for the content.<br/><br/> Usage guidelines:<br/><br/> <ul>
<li>Use values from 0123456789 (Unicode 'DIGIT ZERO' (U+0030) to 'DIGIT
NINE' (U+0039)) rather than superficially similiar Unicode symbols.</li>
<li>Use '.' (Unicode 'FULL STOP' (U+002E)) rather than ',' to indicate a
decimal point. Avoid using these symbols as a readability separator.</li>
</ul> 

=end html


A rating_value should be one of the following types:

=over

=item C<Num>

=item C<Str>

=back

=cut

has rating_value => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'ratingValue',
);


=head2 C<review_aspect>

C<reviewAspect>

This Review or Rating is relevant to this part or facet of the
itemReviewed.


A review_aspect should be one of the following types:

=over

=item C<Str>

=back

=cut

has review_aspect => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'reviewAspect',
);


=head2 C<worst_rating>

C<worstRating>

The lowest value allowed in this rating system. If worstRating is omitted,
1 is assumed.


A worst_rating should be one of the following types:

=over

=item C<Num>

=item C<Str>

=back

=cut

has worst_rating => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'worstRating',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Intangible>

=cut

1;
