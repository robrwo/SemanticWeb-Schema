use utf8;

package SemanticWeb::Schema::AerobicActivity;

# ABSTRACT: Physical activity of relatively low intensity that depends primarily on the aerobic energy-generating process; during activity

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'AerobicActivity';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Physical activity of relatively low intensity that depends primarily on the
aerobic energy-generating process; during activity, the aerobic metabolism
uses oxygen to adequately meet energy demands during exercise.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
