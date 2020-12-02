use utf8;

package SemanticWeb::Schema::OpinionNewsArticle;

# ABSTRACT: An [[OpinionNewsArticle]] is a [[NewsArticle]] that primarily expresses opinions rather than journalistic reporting of news and events

use Moo;

extends qw/ SemanticWeb::Schema::NewsArticle /;


use MooX::JSON_LD 'OpinionNewsArticle';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v11.0.1';

=encoding utf8

=head1 DESCRIPTION

An [[OpinionNewsArticle]] is a [[NewsArticle]] that primarily expresses
opinions rather than journalistic reporting of news and events. For
example, a [[NewsArticle]] consisting of a column or
[[Blog]]/[[BlogPosting]] entry in the Opinions section of a news
publication. 




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::NewsArticle>

=cut

1;
