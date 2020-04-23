use utf8;

package SemanticWeb::Schema::OpinionNewsArticle;

# ABSTRACT: An OpinionNewsArticle is a NewsArticle that primarily expresses opinions rather than journalistic reporting of news and events

use Moo;

extends qw/ SemanticWeb::Schema::NewsArticle /;


use MooX::JSON_LD 'OpinionNewsArticle';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v7.0.5';

=encoding utf8

=head1 DESCRIPTION

=begin html

<p>An <a class="localLink"
href="http://schema.org/OpinionNewsArticle">OpinionNewsArticle</a> is a <a
class="localLink" href="http://schema.org/NewsArticle">NewsArticle</a> that
primarily expresses opinions rather than journalistic reporting of news and
events. For example, a <a class="localLink"
href="http://schema.org/NewsArticle">NewsArticle</a> consisting of a column
or <a class="localLink" href="http://schema.org/Blog">Blog</a>/<a
class="localLink" href="http://schema.org/BlogPosting">BlogPosting</a>
entry in the Opinions section of a news publication.<p>

=end html




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::NewsArticle>

=cut

1;
