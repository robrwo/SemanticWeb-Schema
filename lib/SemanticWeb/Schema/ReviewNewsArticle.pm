use utf8;

package SemanticWeb::Schema::ReviewNewsArticle;

# ABSTRACT: A NewsArticle and CriticReview providing a professional critic's assessment of a service

use Moo;

extends qw/ SemanticWeb::Schema::CriticReview SemanticWeb::Schema::NewsArticle /;


use MooX::JSON_LD 'ReviewNewsArticle';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v7.0.5';

=encoding utf8

=head1 DESCRIPTION

=begin html

<p>A <a class="localLink"
href="http://schema.org/NewsArticle">NewsArticle</a> and <a
class="localLink" href="http://schema.org/CriticReview">CriticReview</a>
providing a professional critic's assessment of a service, product,
performance, or artistic or literary work.<p>

=end html




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::NewsArticle>

=cut

1;
