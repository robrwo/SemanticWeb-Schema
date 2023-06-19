use utf8;

package SemanticWeb::Schema::Quantity;

# ABSTRACT: Quantities such as distance

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::Intangible /;


use MooX::JSON_LD 'Quantity';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.2';

=encoding utf8

=head1 DESCRIPTION

Quantities such as distance, time, mass, weight, etc. Particular instances
of say Mass are entities like '3 kg' or '4 milligrams'.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Intangible>

=cut

1;
