use utf8;

package SemanticWeb::Schema::device;

# ABSTRACT: Device required to run the application

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'device';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Device required to run the application. Used in cases where a specific
make/model is required to run the application.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
