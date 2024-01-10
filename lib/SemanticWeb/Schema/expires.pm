use utf8;

package SemanticWeb::Schema::expires;

# ABSTRACT: Date the content expires and is no longer useful or available

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'expires';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Date the content expires and is no longer useful or available. For example a L<SemanticWeb::Schema::VideoObject> or L<SemanticWeb::Schema::NewsArticle> whose availability or relevance is time-limited, or a L<SemanticWeb::Schema::ClaimReview> fact check whose publisher wants to indicate that it may no longer be relevant (or helpful to highlight) after some date.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
