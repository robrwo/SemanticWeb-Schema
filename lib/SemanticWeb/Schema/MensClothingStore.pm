use utf8;

package SemanticWeb::Schema::MensClothingStore;

# ABSTRACT: A men's clothing store.

use Moo;

extends qw/ SemanticWeb::Schema::Store /;


use MooX::JSON_LD 'MensClothingStore';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v15.0.0';

=encoding utf8

=head1 DESCRIPTION

A men's clothing store.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Store>

=cut

1;
