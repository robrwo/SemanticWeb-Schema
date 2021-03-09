use utf8;

package SemanticWeb::Schema::DefenceEstablishment;

# ABSTRACT: A defence establishment

use Moo;

extends qw/ SemanticWeb::Schema::GovernmentBuilding /;


use MooX::JSON_LD 'DefenceEstablishment';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v12.0.1';

=encoding utf8

=head1 DESCRIPTION

A defence establishment, such as an army or navy base.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::GovernmentBuilding>

=cut

1;
