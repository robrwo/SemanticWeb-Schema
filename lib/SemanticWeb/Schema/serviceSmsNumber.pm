use utf8;

package SemanticWeb::Schema::serviceSmsNumber;

# ABSTRACT: The number to access the service by text message.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'serviceSmsNumber';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The number to access the service by text message.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
