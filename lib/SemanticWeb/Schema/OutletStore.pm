package SemanticWeb::Schema::OutletStore;

# ABSTRACT: An outlet store.

use Moo;

extends qw/ SemanticWeb::Schema::Store /;


use MooX::JSON_LD 'OutletStore';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

An outlet store.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Store>

=cut

1;
