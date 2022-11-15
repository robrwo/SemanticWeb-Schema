use utf8;

package SemanticWeb::Schema::QAPage;

# ABSTRACT: A QAPage is a WebPage focussed on a specific Question and its Answer(s)

use Moo;

extends qw/ SemanticWeb::Schema::WebPage /;


use MooX::JSON_LD 'QAPage';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v15.0.1';

=encoding utf8

=head1 DESCRIPTION

A QAPage is a WebPage focussed on a specific Question and its Answer(s),
e.g. in a question answering site or documenting Frequently Asked Questions
(FAQs).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::WebPage>

=cut

1;
