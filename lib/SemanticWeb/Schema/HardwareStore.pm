use utf8;

package SemanticWeb::Schema::HardwareStore;

# ABSTRACT: A hardware store.

use Moo;

extends qw/ SemanticWeb::Schema::Store /;


use MooX::JSON_LD 'HardwareStore';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v11.01.0';

=encoding utf8

=head1 DESCRIPTION

A hardware store.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Store>

=cut

1;
