use utf8;

package SemanticWeb::Schema::ScholarlyArticle;

# ABSTRACT: A scholarly article.

use Moo;

extends qw/ SemanticWeb::Schema::Article /;


use MooX::JSON_LD 'ScholarlyArticle';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.8.1';

=encoding utf8

=head1 DESCRIPTION

A scholarly article.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Article>

=cut

1;
