use utf8;

package SemanticWeb::Schema::BackgroundNewsArticle;

# ABSTRACT: A NewsArticle providing historical context

use Moo;

extends qw/ SemanticWeb::Schema::NewsArticle /;


use MooX::JSON_LD 'BackgroundNewsArticle';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v7.0.3';

=encoding utf8

=head1 DESCRIPTION

=begin html

<p>A <a class="localLink"
href="http://schema.org/NewsArticle">NewsArticle</a> providing historical
context, definition and detail on a specific topic (aka "explainer" or
"backgrounder"). For example, an in-depth article or
frequently-asked-questions (<a
href="https://en.wikipedia.org/wiki/FAQ">FAQ</a>) document on topics such
as Climate Change or the European Union. Other kinds of background material
from a non-news setting are often described using <a class="localLink"
href="http://schema.org/Book">Book</a> or <a class="localLink"
href="http://schema.org/Article">Article</a>, in particular <a
class="localLink"
href="http://schema.org/ScholarlyArticle">ScholarlyArticle</a>. See also <a
class="localLink" href="http://schema.org/NewsArticle">NewsArticle</a> for
related vocabulary from a learning/education perspective.<p>

=end html




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::NewsArticle>

=cut

1;
