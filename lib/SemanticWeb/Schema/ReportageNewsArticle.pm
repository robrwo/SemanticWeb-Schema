use utf8;

package SemanticWeb::Schema::ReportageNewsArticle;

# ABSTRACT: The [[ReportageNewsArticle]] type is a subtype of [[NewsArticle]] representing news articles which are the result of journalistic news reporting conventions

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::NewsArticle /;


use MooX::JSON_LD 'ReportageNewsArticle';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.2';

=encoding utf8

=head1 DESCRIPTION

The L<SemanticWeb::Schema::ReportageNewsArticle> type is a subtype of L<SemanticWeb::Schema::NewsArticle> representing
 news articles which are the result of journalistic news reporting conventions.

In practice many news publishers produce a wide variety of article types, many of which might be considered a L<SemanticWeb::Schema::NewsArticle> but not a L<SemanticWeb::Schema::ReportageNewsArticle>. For example, opinion pieces, reviews, analysis, sponsored or satirical articles, or articles that combine several of these elements.

The L<SemanticWeb::Schema::ReportageNewsArticle> type is based on a stricter ideal for "news" as a work of journalism, with articles based on factual information either observed or verified by the author, or reported and verified from knowledgeable sources.  This often includes perspectives from multiple viewpoints on a particular issue (distinguishing news reports from public relations or propaganda).  News reports in the L<SemanticWeb::Schema::ReportageNewsArticle> sense de-emphasize the opinion of the author, with commentary and value judgements typically expressed elsewhere.

A L<SemanticWeb::Schema::ReportageNewsArticle> which goes deeper into analysis can also be marked with an additional type of L<SemanticWeb::Schema::AnalysisNewsArticle>.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::NewsArticle>

=cut

1;
