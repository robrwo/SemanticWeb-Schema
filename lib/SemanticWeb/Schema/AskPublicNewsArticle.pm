use utf8;

package SemanticWeb::Schema::AskPublicNewsArticle;

# ABSTRACT: A [[NewsArticle]] expressing an open call by a [[NewsMediaOrganization]] asking the public for input

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::NewsArticle /;


use MooX::JSON_LD 'AskPublicNewsArticle';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v22.0.1';

=encoding utf8

=head1 DESCRIPTION

A L<SemanticWeb::Schema::NewsArticle> expressing an open call by a L<SemanticWeb::Schema::NewsMediaOrganization> asking the public for input, insights, clarifications, anecdotes, documentation, etc., on an issue, for reporting purposes.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::NewsArticle>

=cut

1;
