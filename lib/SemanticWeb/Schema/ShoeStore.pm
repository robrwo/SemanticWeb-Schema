use utf8;

package SemanticWeb::Schema::ShoeStore;

# ABSTRACT: A shoe store.

use Moo;

extends qw/ SemanticWeb::Schema::Store /;


use MooX::JSON_LD 'ShoeStore';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v15.0.0';

=encoding utf8

=head1 DESCRIPTION

A shoe store.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Store>

=cut

1;
