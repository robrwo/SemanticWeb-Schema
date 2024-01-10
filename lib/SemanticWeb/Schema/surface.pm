use utf8;

package SemanticWeb::Schema::surface;

# ABSTRACT: A material used as a surface in some artwork

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'surface';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A material used as a surface in some artwork, e.g. Canvas, Paper, Wood,
Board, etc.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
