use utf8;

package SemanticWeb::Schema::OnlineStore;

# ABSTRACT: An eCommerce site.

use Moo;

extends qw/ SemanticWeb::Schema::OnlineBusiness /;


use MooX::JSON_LD 'OnlineStore';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.0';

=encoding utf8

=head1 DESCRIPTION

An eCommerce site.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::OnlineBusiness>

=cut

1;
