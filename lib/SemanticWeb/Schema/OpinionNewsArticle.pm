use utf8;

package SemanticWeb::Schema::OpinionNewsArticle;

# ABSTRACT: An [[OpinionNewsArticle]] is a [[NewsArticle]] that primarily expresses opinions rather than journalistic reporting of news and events

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::NewsArticle /;


use MooX::JSON_LD 'OpinionNewsArticle';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

An L<SemanticWeb::Schema::OpinionNewsArticle> is a L<SemanticWeb::Schema::NewsArticle> that primarily expresses opinions rather than journalistic reporting of news and events. For example, a L<SemanticWeb::Schema::NewsArticle> consisting of a column or L<SemanticWeb::Schema::Blog>/L<SemanticWeb::Schema::BlogPosting> entry in the Opinions section of a news publication. 



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::NewsArticle>

=cut

1;
