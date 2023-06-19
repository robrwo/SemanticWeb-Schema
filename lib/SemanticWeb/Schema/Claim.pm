use utf8;

package SemanticWeb::Schema::Claim;

# ABSTRACT: A [[Claim]] in Schema

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork /;


use MooX::JSON_LD 'Claim';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.1';

=encoding utf8

=head1 DESCRIPTION

A L<SemanticWeb::Schema::Claim> in Schema.org represents a specific, factually-oriented claim that could be the [[itemReviewed]] in a L<SemanticWeb::Schema::ClaimReview>. The content of a claim can be summarized with the [[text]] property. Variations on well known claims can have their common identity indicated via [[sameAs]] links, and summarized with a [[name]]. Ideally, a L<SemanticWeb::Schema::Claim> description includes enough contextual information to minimize the risk of ambiguity or inclarity. In practice, many claims are better understood in the context in which they appear or the interpretations provided by claim reviews.

  Beyond L<SemanticWeb::Schema::ClaimReview>, the Claim type can be associated with related creative works - for example a L<SemanticWeb::Schema::ScholarlyArticle> or L<SemanticWeb::Schema::Question> might be [[about]] some L<SemanticWeb::Schema::Claim>.

  At this time, Schema.org does not define any types of relationship between claims. This is a natural area for future exploration.



=head1 ATTRIBUTES


=head2 C<appearance>



Indicates an occurrence of a L<SemanticWeb::Schema::Claim> in some L<SemanticWeb::Schema::CreativeWork>.

A appearance should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::CreativeWork']>

=back

=head2 C<_has_appearance>

A predicate for the L</appearance> attribute.

=cut

has appearance => (
    is        => 'rw',
    predicate => '_has_appearance',
    json_ld   => 'appearance',
);


=head2 C<claim_interpreter>

C<claimInterpreter>

For a L<SemanticWeb::Schema::Claim> interpreted from L<SemanticWeb::Schema::MediaObject> content
    sed to indicate a claim contained, implied or refined from the content of a L<SemanticWeb::Schema::MediaObject>.

A claim_interpreter should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=head2 C<_has_claim_interpreter>

A predicate for the L</claim_interpreter> attribute.

=cut

has claim_interpreter => (
    is        => 'rw',
    predicate => '_has_claim_interpreter',
    json_ld   => 'claimInterpreter',
);


=head2 C<first_appearance>

C<firstAppearance>

Indicates the first known occurrence of a L<SemanticWeb::Schema::Claim> in some L<SemanticWeb::Schema::CreativeWork>.

A first_appearance should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::CreativeWork']>

=back

=head2 C<_has_first_appearance>

A predicate for the L</first_appearance> attribute.

=cut

has first_appearance => (
    is        => 'rw',
    predicate => '_has_first_appearance',
    json_ld   => 'firstAppearance',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWork>

=cut

1;
