use utf8;

package SemanticWeb::Schema::layoutImage;

# ABSTRACT: A schematic image showing the floorplan layout.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'layoutImage';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A schematic image showing the floorplan layout.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
