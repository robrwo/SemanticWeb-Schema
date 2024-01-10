use utf8;

package SemanticWeb::Schema::primaryImageOfPage;

# ABSTRACT: Indicates the main image on the page.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'primaryImageOfPage';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Indicates the main image on the page.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
