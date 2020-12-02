use utf8;

package SemanticWeb::Schema::BackgroundNewsArticle;

# ABSTRACT: A [[NewsArticle]] providing historical context

use Moo;

extends qw/ SemanticWeb::Schema::NewsArticle /;


use MooX::JSON_LD 'BackgroundNewsArticle';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v11.0.1';

=encoding utf8

=head1 DESCRIPTION

A [[NewsArticle]] providing historical context, definition and detail on a
specific topic (aka "explainer" or "backgrounder"). For example, an
in-depth article or frequently-asked-questions
([FAQ](https://en.wikipedia.org/wiki/FAQ)) document on topics such as
Climate Change or the European Union. Other kinds of background material
from a non-news setting are often described using [[Book]] or [[Article]],
in particular [[ScholarlyArticle]]. See also [[NewsArticle]] for related
vocabulary from a learning/education perspective.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::NewsArticle>

=cut

1;
