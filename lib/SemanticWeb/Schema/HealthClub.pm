use utf8;

package SemanticWeb::Schema::HealthClub;

# ABSTRACT: A health club.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::HealthAndBeautyBusiness SemanticWeb::Schema::SportsActivityLocation /;


use MooX::JSON_LD 'HealthClub';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v23.0.1';

=encoding utf8

=head1 DESCRIPTION

A health club.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::SportsActivityLocation>

=cut

1;
