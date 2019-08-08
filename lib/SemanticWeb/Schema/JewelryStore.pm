use utf8;

package SemanticWeb::Schema::JewelryStore;

# ABSTRACT: A jewelry store.

use Moo;

extends qw/ SemanticWeb::Schema::Store /;


use MooX::JSON_LD 'JewelryStore';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.9.0';

=encoding utf8

=head1 DESCRIPTION

A jewelry store.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Store>

=cut

1;
