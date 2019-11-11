use utf8;

package SemanticWeb::Schema::Claim;

# ABSTRACT: A Claim in Schema

use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork /;


use MooX::JSON_LD 'Claim';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v5.0.0';

=encoding utf8

=head1 DESCRIPTION

=begin html

<p>A <a class="localLink" href="http://schema.org/Claim">Claim</a> in
Schema.org represents a specific, factually-oriented claim that could be
the <a class="localLink"
href="http://schema.org/itemReviewed">itemReviewed</a> in a <a
class="localLink" href="http://schema.org/ClaimReview">ClaimReview</a>. The
content of a claim can be summarized with the <a class="localLink"
href="http://schema.org/text">text</a> property. Variations on well known
claims can have their common identity indicated via <a class="localLink"
href="http://schema.org/sameAs">sameAs</a> links, and summarized with a <a
class="localLink" href="http://schema.org/name">name</a>. Ideally, a <a
class="localLink" href="http://schema.org/Claim">Claim</a> description
includes enough contextual information to minimize the risk of ambiguity or
inclarity. In practice, many claims are better understood in the context in
which they appear or the interpretations provided by claim
reviews.<br/><br/> Beyond <a class="localLink"
href="http://schema.org/ClaimReview">ClaimReview</a>, the Claim type can be
associated with related creative works - for example a <a class="localLink"
href="http://schema.org/ScholaryArticle">ScholaryArticle</a> or <a
class="localLink" href="http://schema.org/Question">Question</a> might be
<a class="localLink" href="http://schema.org/about">about</a> some <a
class="localLink" href="http://schema.org/Claim">Claim</a>.<br/><br/> At
this time, Schema.org does not define any types of relationship between
claims. This is a natural area for future exploration.<p>

=end html




=head1 ATTRIBUTES


=head2 C<appearance>



=begin html

<p>Indicates an occurence of a <a class="localLink"
href="http://schema.org/Claim">Claim</a> in some <a class="localLink"
href="http://schema.org/CreativeWork">CreativeWork</a>.<p>

=end html


A appearance should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::CreativeWork']>

=back

=cut

has appearance => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'appearance',
);


=head2 C<first_appearance>

C<firstAppearance>

=begin html

<p>Indicates the first known occurence of a <a class="localLink"
href="http://schema.org/Claim">Claim</a> in some <a class="localLink"
href="http://schema.org/CreativeWork">CreativeWork</a>.<p>

=end html


A first_appearance should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::CreativeWork']>

=back

=cut

has first_appearance => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'firstAppearance',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWork>

=cut

1;
