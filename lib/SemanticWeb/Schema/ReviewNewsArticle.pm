use utf8;

package SemanticWeb::Schema::ReviewNewsArticle;

# ABSTRACT: A [[NewsArticle]] and [[CriticReview]] providing a professional critic's assessment of a service

use Moo;

extends qw/ SemanticWeb::Schema::CriticReview SemanticWeb::Schema::NewsArticle /;


use MooX::JSON_LD 'ReviewNewsArticle';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v11.1.1';

=encoding utf8

=head1 DESCRIPTION

A L<SemanticWeb::Schema::NewsArticle> and L<SemanticWeb::Schema::CriticReview> providing a professional critic's assessment of a service, product, performance, or artistic or literary work.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::NewsArticle>

=cut

1;
