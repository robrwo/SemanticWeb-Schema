use utf8;

package SemanticWeb::Schema::printSection;

# ABSTRACT: If this NewsArticle appears in print

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'printSection';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

If this NewsArticle appears in print, this field indicates the print
section in which the article appeared.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
