use utf8;

package SemanticWeb::Schema::FAQPage;

# ABSTRACT: A [[FAQPage]] is a [[WebPage]] presenting one or more "[Frequently asked questions](https://en

use Moo;

extends qw/ SemanticWeb::Schema::WebPage /;


use MooX::JSON_LD 'FAQPage';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v11.01.0';

=encoding utf8

=head1 DESCRIPTION

A L<SemanticWeb::Schema::FAQPage> is a L<SemanticWeb::Schema::WebPage> presenting one or more "L<Frequently asked questions|https://en.wikipedia.org/wiki/FAQ>" (see also L<SemanticWeb::Schema::QAPage>).



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::WebPage>

=cut

1;
