use utf8;

package SemanticWeb::Schema::OpinionNewsArticle;

# ABSTRACT: An <a class="localLink" href="http://schema

use Moo;

extends qw/ SemanticWeb::Schema::NewsArticle /;


use MooX::JSON_LD 'OpinionNewsArticle';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.9.1';

=encoding utf8

=head1 DESCRIPTION

=begin html

An <a class="localLink"
href="http://schema.org/OpinionNewsArticle">OpinionNewsArticle</a> is a <a
class="localLink" href="http://schema.org/NewsArticle">NewsArticle</a> that
primarily expresses opinions rather than journalistic reporting of news and
events. For example, a <a class="localLink"
href="http://schema.org/NewsArticle">NewsArticle</a> consisting of a column
or <a class="localLink" href="http://schema.org/Blog">Blog</a>/<a
class="localLink" href="http://schema.org/BlogPosting">BlogPosting</a>
entry in the Opinions section of a news publication.

=end html




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::NewsArticle>

=cut

1;
