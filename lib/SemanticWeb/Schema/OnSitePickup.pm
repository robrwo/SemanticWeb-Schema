use utf8;

package SemanticWeb::Schema::OnSitePickup;

# ABSTRACT: A DeliveryMethod in which an item is collected on site

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'OnSitePickup';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A DeliveryMethod in which an item is collected on site, e.g. in a store or
at a box office.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
