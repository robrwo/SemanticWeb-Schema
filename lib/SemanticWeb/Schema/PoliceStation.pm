use utf8;

package SemanticWeb::Schema::PoliceStation;

# ABSTRACT: A police station.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::CivicStructure SemanticWeb::Schema::EmergencyService /;


use MooX::JSON_LD 'PoliceStation';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A police station.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::EmergencyService>

=cut

1;
