use utf8;

package SemanticWeb::Schema::lodgingUnitType;

# ABSTRACT: Textual description of the unit type (including suite vs

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'lodgingUnitType';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Textual description of the unit type (including suite vs. room, size of
bed, etc.).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
