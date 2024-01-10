use utf8;

package SemanticWeb::Schema::ratingExplanation;

# ABSTRACT: A short explanation (e

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'ratingExplanation';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A short explanation (e.g. one to two sentences) providing background context and other information that led to the conclusion expressed in the rating. This is particularly applicable to ratings associated with "fact check" markup using L<SemanticWeb::Schema::ClaimReview>.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
