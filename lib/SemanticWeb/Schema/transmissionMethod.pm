use utf8;

package SemanticWeb::Schema::transmissionMethod;

# ABSTRACT: How the disease spreads

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'transmissionMethod';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

How the disease spreads, either as a route or vector, for example 'direct
contact', 'Aedes aegypti', etc.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
