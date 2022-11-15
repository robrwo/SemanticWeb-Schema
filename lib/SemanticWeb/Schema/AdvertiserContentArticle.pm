use utf8;

package SemanticWeb::Schema::AdvertiserContentArticle;

# ABSTRACT: An [[Article]] that an external entity has paid to place or to produce to its specifications

use Moo;

extends qw/ SemanticWeb::Schema::Article /;


use MooX::JSON_LD 'AdvertiserContentArticle';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v15.0.0';

=encoding utf8

=head1 DESCRIPTION

An L<SemanticWeb::Schema::Article> that an external entity has paid to place or to produce to its specifications. Includes L<advertorials|https://en.wikipedia.org/wiki/Advertorial>, sponsored content, native advertising and other paid content.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Article>

=cut

1;
