use utf8;

package SemanticWeb::Schema::ComputerLanguage;

# ABSTRACT: This type covers computer programming languages such as Scheme and Lisp

use Moo;

extends qw/ SemanticWeb::Schema::Intangible /;


use MooX::JSON_LD 'ComputerLanguage';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v7.0.5';

=encoding utf8

=head1 DESCRIPTION

=begin html

<p>This type covers computer programming languages such as Scheme and Lisp,
as well as other language-like computer representations. Natural languages
are best represented with the <a class="localLink"
href="http://schema.org/Language">Language</a> type.<p>

=end html




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Intangible>

=cut

1;
