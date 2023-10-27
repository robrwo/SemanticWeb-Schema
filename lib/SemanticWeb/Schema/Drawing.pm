use utf8;

package SemanticWeb::Schema::Drawing;

# ABSTRACT: A picture or diagram made with a pencil

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork /;


use MooX::JSON_LD 'Drawing';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v23.0.0';

=encoding utf8

=head1 DESCRIPTION

A picture or diagram made with a pencil, pen, or crayon rather than paint.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWork>

=cut

1;
