use utf8;

package SemanticWeb::Schema::isPartOf;

# ABSTRACT: Indicates an item or CreativeWork that this item

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'isPartOf';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Indicates an item or CreativeWork that this item, or CreativeWork (in some
sense), is part of.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
