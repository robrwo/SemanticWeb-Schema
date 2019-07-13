use utf8;

package SemanticWeb::Schema::WholesaleStore;

# ABSTRACT: A wholesale store.

use Moo;

extends qw/ SemanticWeb::Schema::Store /;


use MooX::JSON_LD 'WholesaleStore';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.7.1';

=encoding utf8

=head1 DESCRIPTION

A wholesale store.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Store>

=cut

1;
