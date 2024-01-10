use utf8;

package SemanticWeb::Schema::printEdition;

# ABSTRACT: The edition of the print product in which the NewsArticle appears.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'printEdition';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The edition of the print product in which the NewsArticle appears.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
