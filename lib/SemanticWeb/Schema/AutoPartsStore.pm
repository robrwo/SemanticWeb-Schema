use utf8;

package SemanticWeb::Schema::AutoPartsStore;

# ABSTRACT: An auto parts store.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::AutomotiveBusiness SemanticWeb::Schema::Store /;


use MooX::JSON_LD 'AutoPartsStore';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.0';

=encoding utf8

=head1 DESCRIPTION

An auto parts store.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Store>

=cut

1;
