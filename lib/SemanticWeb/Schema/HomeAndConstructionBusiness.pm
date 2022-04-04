use utf8;

package SemanticWeb::Schema::HomeAndConstructionBusiness;

# ABSTRACT: A construction business

use Moo;

extends qw/ SemanticWeb::Schema::LocalBusiness /;


use MooX::JSON_LD 'HomeAndConstructionBusiness';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v14.0.0';

=encoding utf8

=head1 DESCRIPTION

A construction business.

A HomeAndConstructionBusiness is a L<SemanticWeb::Schema::LocalBusiness> that provides services around homes and buildings.

As a L<SemanticWeb::Schema::LocalBusiness> it can be described as a [[provider]] of one or more L<SemanticWeb::Schema::Service>(s).



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::LocalBusiness>

=cut

1;
