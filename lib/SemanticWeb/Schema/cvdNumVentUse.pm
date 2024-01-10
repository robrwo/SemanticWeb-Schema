use utf8;

package SemanticWeb::Schema::cvdNumVentUse;

# ABSTRACT: numventuse - MECHANICAL VENTILATORS IN USE: Total number of ventilators in use.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'cvdNumVentUse';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

numventuse - MECHANICAL VENTILATORS IN USE: Total number of ventilators in
use.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
