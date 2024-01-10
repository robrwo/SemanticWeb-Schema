use utf8;

package SemanticWeb::Schema::Hardcover;

# ABSTRACT: Book format: Hardcover.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'Hardcover';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Book format: Hardcover.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
