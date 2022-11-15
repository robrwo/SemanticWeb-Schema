use utf8;

package SemanticWeb::Schema::OnlineBusiness;

# ABSTRACT: A particular online business

use Moo;

extends qw/ SemanticWeb::Schema::Organization /;


use MooX::JSON_LD 'OnlineBusiness';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v15.0.0';

=encoding utf8

=head1 DESCRIPTION

A particular online business, either standalone or the online part of a
broader organization. Examples include an eCommerce site, an online travel
booking site, an online learning site, an online logistics and shipping
provider, an online (virtual) doctor, etc.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Organization>

=cut

1;
