use utf8;

package SemanticWeb::Schema::printColumn;

# ABSTRACT: The number of the column in which the NewsArticle appears in the print edition.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'printColumn';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The number of the column in which the NewsArticle appears in the print
edition.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
