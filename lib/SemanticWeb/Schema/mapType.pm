use utf8;

package SemanticWeb::Schema::mapType;

# ABSTRACT: Indicates the kind of Map

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'mapType';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Indicates the kind of Map, from the MapCategoryType Enumeration.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
