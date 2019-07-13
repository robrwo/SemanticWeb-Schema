use utf8;

package SemanticWeb::Schema::TireShop;

# ABSTRACT: A tire shop.

use Moo;

extends qw/ SemanticWeb::Schema::Store /;


use MooX::JSON_LD 'TireShop';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.7.1';

=encoding utf8

=head1 DESCRIPTION

A tire shop.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Store>

=cut

1;
