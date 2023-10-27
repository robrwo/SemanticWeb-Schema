use utf8;

package SemanticWeb::Schema::SatiricalArticle;

# ABSTRACT: An [[Article]] whose content is primarily [[satirical]](https://en

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::Article /;


use MooX::JSON_LD 'SatiricalArticle';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v23.0.1';

=encoding utf8

=head1 DESCRIPTION

An L<SemanticWeb::Schema::Article> whose content is primarily L<[satirical]|https://en.wikipedia.org/wiki/Satire> in nature, i.e. unlikely to be literally true. A satirical article is sometimes but not necessarily also a L<SemanticWeb::Schema::NewsArticle>. L<SemanticWeb::Schema::ScholarlyArticle>s are also sometimes satirized.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Article>

=cut

1;
