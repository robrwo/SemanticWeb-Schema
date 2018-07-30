package SemanticWeb::Schema::DepartmentStore;

# ABSTRACT: A department store.

use Moo;

extends qw/ SemanticWeb::Schema::Store /;


use MooX::JSON_LD 'DepartmentStore';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.2';

=head1 DESCRIPTION

A department store.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Store>

=cut

1;