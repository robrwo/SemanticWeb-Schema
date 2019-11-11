use utf8;

package SemanticWeb::Schema::FAQPage;

# ABSTRACT: A FAQPage is a WebPage presenting one or more " Frequently asked questions " (see also QAPage ).

use Moo;

extends qw/ SemanticWeb::Schema::WebPage /;


use MooX::JSON_LD 'FAQPage';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v5.0.1';

=encoding utf8

=head1 DESCRIPTION

=begin html

<p>A <a class="localLink" href="http://schema.org/FAQPage">FAQPage</a> is a
<a class="localLink" href="http://schema.org/WebPage">WebPage</a>
presenting one or more "<a
href="https://en.wikipedia.org/wiki/FAQ">Frequently asked questions</a>"
(see also <a class="localLink"
href="http://schema.org/QAPage">QAPage</a>).<p>

=end html




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::WebPage>

=cut

1;
