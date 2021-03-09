use utf8;

package SemanticWeb::Schema::AnalysisNewsArticle;

# ABSTRACT: An AnalysisNewsArticle is a [[NewsArticle]] that

use Moo;

extends qw/ SemanticWeb::Schema::NewsArticle /;


use MooX::JSON_LD 'AnalysisNewsArticle';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v12.0.0';

=encoding utf8

=head1 DESCRIPTION

An AnalysisNewsArticle is a L<SemanticWeb::Schema::NewsArticle> that, while based on factual reporting, incorporates the expertise of the author/producer, offering interpretations and conclusions.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::NewsArticle>

=cut

1;
