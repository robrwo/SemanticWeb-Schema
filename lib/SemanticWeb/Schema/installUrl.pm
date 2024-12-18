use utf8;

package SemanticWeb::Schema::installUrl;

# ABSTRACT: URL at which the app may be installed

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'installUrl';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

URL at which the app may be installed, if different from the URL of the
item.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;