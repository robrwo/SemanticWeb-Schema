use utf8;

package SemanticWeb::Schema::WebContent;

# ABSTRACT: WebContent is a type representing all WebPage 

use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork /;


use MooX::JSON_LD 'WebContent';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v7.0.0';

=encoding utf8

=head1 DESCRIPTION

=begin html

<p>WebContent is a type representing all <a class="localLink"
href="http://schema.org/WebPage">WebPage</a>, <a class="localLink"
href="http://schema.org/WebSite">WebSite</a> and <a class="localLink"
href="http://schema.org/WebPageElement">WebPageElement</a> content. It is
sometimes the case that detailed distinctions between Web pages, sites and
their parts is not always important or obvious. The <a class="localLink"
href="http://schema.org/WebContent">WebContent</a> type makes it easier to
describe Web-addressable content without requiring such distinctions to
always be stated. (The intent is that the existing types <a
class="localLink" href="http://schema.org/WebPage">WebPage</a>, <a
class="localLink" href="http://schema.org/WebSite">WebSite</a> and <a
class="localLink"
href="http://schema.org/WebPageElement">WebPageElement</a> will eventually
be declared as subtypes of <a class="localLink"
href="http://schema.org/WebContent">WebContent</a>.)<p>

=end html




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWork>

=cut

1;
