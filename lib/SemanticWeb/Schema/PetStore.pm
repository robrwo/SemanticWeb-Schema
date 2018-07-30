package SemanticWeb::Schema::PetStore;

# ABSTRACT: A pet store.

use Moo;

extends qw/ SemanticWeb::Schema::Store /;


use MooX::JSON_LD 'PetStore';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.2';

=head1 DESCRIPTION

A pet store.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Store>

=cut

1;