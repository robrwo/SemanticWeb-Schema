use utf8;

package SemanticWeb::Schema::Guide;

# ABSTRACT: [[Guide]] is a page or article that recommends specific products or services

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork /;


use MooX::JSON_LD 'Guide';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.2';

=encoding utf8

=head1 DESCRIPTION

L<SemanticWeb::Schema::Guide> is a page or article that recommends specific products or services, or aspects of a thing for a user to consider. A L<SemanticWeb::Schema::Guide> may represent a Buying Guide and detail aspects of products or services for a user to consider. A L<SemanticWeb::Schema::Guide> may represent a Product Guide and recommend specific products or services. A L<SemanticWeb::Schema::Guide> may represent a Ranked List and recommend specific products or services with ranking.



=head1 ATTRIBUTES


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




=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWork>

=cut

1;
