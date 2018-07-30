package SemanticWeb::Schema::AutoPartsStore;

# ABSTRACT: An auto parts store.

use Moo;

extends qw/ SemanticWeb::Schema::AutomotiveBusiness SemanticWeb::Schema::Store /;


use MooX::JSON_LD 'AutoPartsStore';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.2';

=head1 DESCRIPTION

An auto parts store.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Store>

=cut

1;