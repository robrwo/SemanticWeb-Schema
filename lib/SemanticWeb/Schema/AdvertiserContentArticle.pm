use utf8;

package SemanticWeb::Schema::AdvertiserContentArticle;

# ABSTRACT: An <a class="localLink" href="http://schema

use Moo;

extends qw/ SemanticWeb::Schema::Article /;


use MooX::JSON_LD 'AdvertiserContentArticle';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.9.0';

=encoding utf8

=head1 DESCRIPTION

=begin html

An <a class="localLink" href="http://schema.org/Article">Article</a> that
an external entity has paid to place or to produce to its specifications.
Includes <a
href="https://en.wikipedia.org/wiki/Advertorial">advertorials</a>,
sponsored content, native advertising and other paid content.

=end html




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Article>

=cut

1;
