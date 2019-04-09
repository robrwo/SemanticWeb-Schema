use utf8;

package SemanticWeb::Schema::HobbyShop;

# ABSTRACT: A store that sells materials useful or necessary for various hobbies.

use Moo;

extends qw/ SemanticWeb::Schema::Store /;


use MooX::JSON_LD 'HobbyShop';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.5.1';

=encoding utf8

=head1 DESCRIPTION

A store that sells materials useful or necessary for various hobbies.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Store>

=cut

1;
