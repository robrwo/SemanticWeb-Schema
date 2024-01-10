use utf8;

package SemanticWeb::Schema::warrantyPromise;

# ABSTRACT: The warranty promise(s) included in the offer.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'warrantyPromise';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The warranty promise(s) included in the offer.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
