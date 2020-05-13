use utf8;

package SemanticWeb::Schema::SatiricalArticle;

# ABSTRACT: An Article whose content is primarily [satirical] in nature

use Moo;

extends qw/ SemanticWeb::Schema::Article /;


use MooX::JSON_LD 'SatiricalArticle';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v8.0.1';

=encoding utf8

=head1 DESCRIPTION

=begin html

<p>An <a class="localLink" href="http://schema.org/Article">Article</a>
whose content is primarily <a
href="https://en.wikipedia.org/wiki/Satire">[satirical]</a> in nature, i.e.
unlikely to be literally true. A satirical article is sometimes but not
necessarily also a <a class="localLink"
href="http://schema.org/NewsArticle">NewsArticle</a>. <a class="localLink"
href="http://schema.org/ScholarlyArticle">ScholarlyArticle</a>s are also
sometimes satirized.<p>

=end html




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Article>

=cut

1;
