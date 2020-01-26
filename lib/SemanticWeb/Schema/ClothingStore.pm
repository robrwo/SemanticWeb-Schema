use utf8;

package SemanticWeb::Schema::ClothingStore;

# ABSTRACT: A clothing store.

use Moo;

extends qw/ SemanticWeb::Schema::Store /;


use MooX::JSON_LD 'ClothingStore';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v6.0.1';

=encoding utf8

=head1 DESCRIPTION

A clothing store.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Store>

=cut

1;
