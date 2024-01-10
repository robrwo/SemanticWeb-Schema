use utf8;

package SemanticWeb::Schema::servicePhone;

# ABSTRACT: The phone number to use to access the service.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'servicePhone';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The phone number to use to access the service.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
