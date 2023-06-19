use utf8;

package SemanticWeb::Schema::EndorsementRating;

# ABSTRACT: An EndorsementRating is a rating that expresses some level of endorsement

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::Rating /;


use MooX::JSON_LD 'EndorsementRating';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.2';

=encoding utf8

=head1 DESCRIPTION

An EndorsementRating is a rating that expresses some level of endorsement, for example inclusion in a "critic's pick" blog, a
"Like" or "+1" on a social network. It can be considered the [[result]] of an L<SemanticWeb::Schema::EndorseAction> in which the [[object]] of the action is rated positively by
some [[agent]]. As is common elsewhere in schema.org, it is sometimes more useful to describe the results of such an action without explicitly describing the L<SemanticWeb::Schema::Action>.

An L<SemanticWeb::Schema::EndorsementRating> may be part of a numeric scale or organized system, but this is not required: having an explicit type for indicating a positive,
endorsement rating is particularly useful in the absence of numeric scales as it helps consumers understand that the rating is broadly positive.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Rating>

=cut

1;
