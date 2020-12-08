use utf8;

package SemanticWeb::Schema::HomeAndConstructionBusiness;

# ABSTRACT: A construction business

use Moo;

extends qw/ SemanticWeb::Schema::LocalBusiness /;


use MooX::JSON_LD 'HomeAndConstructionBusiness';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v11.01.0';

=encoding utf8

=head1 DESCRIPTION

A construction business.\n\nA HomeAndConstructionBusiness is a
[[LocalBusiness]] that provides services around homes and buildings.\n\nAs
a [[LocalBusiness]] it can be described as a [[provider]] of one or more
[[Service]]\(s).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::LocalBusiness>

=cut

1;
