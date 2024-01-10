use utf8;

package SemanticWeb::Schema::artEdition;

# ABSTRACT: The number of copies when multiple copies of a piece of artwork are produced - e

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'artEdition';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The number of copies when multiple copies of a piece of artwork are
produced - e.g. for a limited edition of 20 prints, 'artEdition' refers to
the total number of copies (in this example "20").




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
