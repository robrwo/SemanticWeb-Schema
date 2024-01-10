use utf8;

package SemanticWeb::Schema::hasPart;

# ABSTRACT: Indicates an item or CreativeWork that is part of this item

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'hasPart';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Indicates an item or CreativeWork that is part of this item, or
CreativeWork (in some sense).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
