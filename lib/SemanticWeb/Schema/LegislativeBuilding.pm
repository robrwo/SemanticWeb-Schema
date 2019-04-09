use utf8;

package SemanticWeb::Schema::LegislativeBuilding;

# ABSTRACT: A legislative building&#x2014;for example

use Moo;

extends qw/ SemanticWeb::Schema::GovernmentBuilding /;


use MooX::JSON_LD 'LegislativeBuilding';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.1.0';

=encoding utf8

=head1 DESCRIPTION

A legislative building&#x2014;for example, the state capitol.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::GovernmentBuilding>

=cut

1;
