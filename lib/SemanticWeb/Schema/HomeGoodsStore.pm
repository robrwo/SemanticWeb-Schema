use utf8;

package SemanticWeb::Schema::HomeGoodsStore;

# ABSTRACT: A home goods store.

use Moo;

extends qw/ SemanticWeb::Schema::Store /;


use MooX::JSON_LD 'HomeGoodsStore';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v7.0.0';

=encoding utf8

=head1 DESCRIPTION

A home goods store.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Store>

=cut

1;
