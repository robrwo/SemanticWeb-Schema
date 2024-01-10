use utf8;

package SemanticWeb::Schema::cssSelector;

# ABSTRACT: A CSS selector, e

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'cssSelector';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A CSS selector, e.g. of a L<SemanticWeb::Schema::SpeakableSpecification> or L<SemanticWeb::Schema::WebPageElement>. In the latter case, multiple matches within a page can constitute a single conceptual "Web page element".



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
