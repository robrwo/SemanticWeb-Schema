use utf8;

package SemanticWeb::Schema::ReportageNewsArticle;

# ABSTRACT: The ReportageNewsArticle type is a subtype of NewsArticle representing news articles which are the result of journalistic news reporting conventions

use Moo;

extends qw/ SemanticWeb::Schema::NewsArticle /;


use MooX::JSON_LD 'ReportageNewsArticle';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v7.0.3';

=encoding utf8

=head1 DESCRIPTION

=begin html

<p>The <a class="localLink"
href="http://schema.org/ReportageNewsArticle">ReportageNewsArticle</a> type
is a subtype of <a class="localLink"
href="http://schema.org/NewsArticle">NewsArticle</a> representing news
articles which are the result of journalistic news reporting
conventions.<br/><br/> In practice many news publishers produce a wide
variety of article types, many of which might be considered a <a
class="localLink" href="http://schema.org/NewsArticle">NewsArticle</a> but
not a <a class="localLink"
href="http://schema.org/ReportageNewsArticle">ReportageNewsArticle</a>. For
example, opinion pieces, reviews, analysis, sponsored or satirical
articles, or articles that combine several of these elements.<br/><br/> The
<a class="localLink"
href="http://schema.org/ReportageNewsArticle">ReportageNewsArticle</a> type
is based on a stricter ideal for "news" as a work of journalism, with
articles based on factual information either observed or verified by the
author, or reported and verified from knowledgeable sources. This often
includes perspectives from multiple viewpoints on a particular issue
(distinguishing news reports from public relations or propaganda). News
reports in the <a class="localLink"
href="http://schema.org/ReportageNewsArticle">ReportageNewsArticle</a>
sense de-emphasize the opinion of the author, with commentary and value
judgements typically expressed elsewhere.<br/><br/> A <a class="localLink"
href="http://schema.org/ReportageNewsArticle">ReportageNewsArticle</a>
which goes deeper into analysis can also be marked with an additional type
of <a class="localLink"
href="http://schema.org/AnalysisNewsArticle">AnalysisNewsArticle</a>.<p>

=end html




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::NewsArticle>

=cut

1;
