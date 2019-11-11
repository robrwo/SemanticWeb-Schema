use utf8;

package SemanticWeb::Schema::SaleEvent;

# ABSTRACT: Event type: Sales event.

use Moo;

extends qw/ SemanticWeb::Schema::Event /;


use MooX::JSON_LD 'SaleEvent';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v5.0.1';

=encoding utf8

=head1 DESCRIPTION

Event type: Sales event.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Event>

=cut

1;
