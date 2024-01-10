use utf8;

package SemanticWeb::Schema::associatedClaimReview;

# ABSTRACT: An associated [[ClaimReview]]

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'associatedClaimReview';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

An associated L<SemanticWeb::Schema::ClaimReview>, related by specific common content, topic or claim. The expectation is that this property would be most typically used in cases where a single activity is conducting both claim reviews and media reviews, in which case [[relatedMediaReview]] would commonly be used on a L<SemanticWeb::Schema::ClaimReview>, while [[relatedClaimReview]] would be used on L<SemanticWeb::Schema::MediaReview>.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
